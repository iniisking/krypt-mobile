import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';

class EnterAmountScreen extends StatefulWidget {
  const EnterAmountScreen({super.key});

  @override
  State<EnterAmountScreen> createState() => _EnterAmountScreenState();
}

class _EnterAmountScreenState extends State<EnterAmountScreen> {
  final TextEditingController _amountController = TextEditingController();
  bool _isAmountEntered = false;
  final double _btcPrice = 45000.0; // Example BTC price in USD

  @override
  void initState() {
    super.initState();
    _amountController.addListener(_onAmountChanged);
  }

  void _onAmountChanged() {
    setState(() {
      _isAmountEntered =
          _amountController.text.isNotEmpty &&
          double.tryParse(_amountController.text) != null &&
          double.parse(_amountController.text) > 0;
    });
  }

  String _getUsdEquivalent() {
    if (_amountController.text.isEmpty) return '~\$0.00';
    double? btcAmount = double.tryParse(_amountController.text);
    if (btcAmount == null) return '~\$0.00';
    double usdAmount = btcAmount * _btcPrice;
    return '~\$${usdAmount.toStringAsFixed(2)}';
  }

  void _setMaxAmount() {
    setState(() {
      _amountController.text = '0.001'; // Set max amount
    });
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: EnterAmountScreenAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 40.h),

            // Amount Input Section
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Amount Display
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: TextField(
                          controller: _amountController,
                          style: TextStyle(
                            fontSize: 46.sp,
                            color: textColor1,
                            fontWeight: FontWeight.bold,
                          ),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '0',
                            hintStyle: TextStyle(
                              fontSize: 46.sp,
                              color: textColor2,
                              fontWeight: FontWeight.bold,
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      CustomTextWidget(
                        text: 'BTC',
                        fontSize: 46.sp,
                        color: textColor1,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(width: 16.w),
                      // Toggle Icon
                      Icon(Icons.swap_vert, color: textColor2, size: 24.sp),
                    ],
                  ),

                  // USD Equivalent
                  SizedBox(height: 8.h),
                  CustomTextWidget(
                    text: _getUsdEquivalent(),
                    fontSize: 16.sp,
                    color: textColor2,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),

            // Available Balance Section
            Column(
              children: [
                Row(
                  children: [
                    CustomTextWidget(
                      text: 'Available To Send',
                      fontSize: 14.sp,
                      color: textColor2,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(width: 4.w),
                    Icon(Icons.info_outline, color: textColor2, size: 16.sp),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: '0 BTC',
                      fontSize: 16.sp,
                      color: textColor1,
                      fontWeight: FontWeight.w600,
                    ),
                    GestureDetector(
                      onTap: _setMaxAmount,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 6.h,
                        ),
                        decoration: BoxDecoration(
                          color: buttonColor.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(16.r),
                          border: Border.all(color: buttonColor),
                        ),
                        child: CustomTextWidget(
                          text: 'Max',
                          fontSize: 12.sp,
                          color: buttonColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 40.h),

            // Next Button
            SizedBox(
              width: double.infinity,
              height: 56.h,
              child: ElevatedButton(
                onPressed: _isAmountEntered
                    ? () {
                        // Navigate to next screen
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isAmountEntered ? buttonColor : purpleColor,
                  foregroundColor: textColor1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  elevation: 0,
                ),
                child: CustomTextWidget(
                  text: 'Next',
                  fontSize: 16.sp,
                  color: _isAmountEntered ? textColor1 : textColor2,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
