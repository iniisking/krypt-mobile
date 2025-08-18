import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/recent%20activity/transaction_details_screen.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Future<void> Function()? onTap;
  final Widget icon;
  final double? height;
  final double? width;

  const ActionButton({
    super.key,
    required this.label,
    this.onTap,
    required this.icon,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 78.h,
        width: width ?? 120.w,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(height: 5.h),
              CustomTextWidget(
                text: label,
                fontSize: 12.sp,
                color: textColor2,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TokenButton extends StatelessWidget {
  final String coinName;
  final String coinAmount;
  final String coinBalance;
  final String pnl;
  final Widget coinIcon;
  final bool profit;
  const TokenButton({
    super.key,
    required this.coinName,
    required this.coinAmount,
    this.coinBalance = '',
    this.pnl = '',
    required this.coinIcon,
    this.profit = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      height: 80.h,
      width: double.infinity.w,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //COIN ICON AND LABEL WITH AMOUNT
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Placeholder for coin icon
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 25.r,
                  child: coinIcon,
                ),

                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //label and amount
                    CustomTextWidget(
                      text: coinName,
                      fontSize: 16.sp,
                      color: textColor1,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomTextWidget(
                      text: coinAmount,
                      fontSize: 14.sp,
                      color: textColor2,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ],
            ),

            // Placeholder for coin balance
            Column(
              children: [
                //coin balance
                CustomTextWidget(
                  text: coinBalance,
                  fontSize: 16.sp,
                  color: textColor1,
                  fontWeight: FontWeight.w500,
                ),

                //PNL
                CustomTextWidget(
                  text: pnl,
                  fontSize: 14.sp,
                  color: profit ? greenColor2 : redColor,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// keep your color names

class TimeRangeSelector extends StatefulWidget {
  final String selectedRange;
  final ValueChanged<String>? onChanged;

  const TimeRangeSelector({
    super.key,
    this.selectedRange = '1H',
    this.onChanged,
  });

  static const List<String> _times = ['1H', '1D', '1W', '1M', 'YTD', 'ALL'];

  @override
  State<TimeRangeSelector> createState() => _TimeRangeSelectorState();
}

class _TimeRangeSelectorState extends State<TimeRangeSelector>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = TimeRangeSelector._times.indexOf(widget.selectedRange);

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(TimeRangeSelector oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedRange != widget.selectedRange) {
      final newIndex = TimeRangeSelector._times.indexOf(widget.selectedRange);
      if (newIndex != -1 && newIndex != _selectedIndex) {
        _animateToIndex(newIndex);
      }
    }
  }

  void _animateToIndex(int newIndex) {
    _selectedIndex = newIndex;
    _animationController.forward(from: 0);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth =
            constraints.maxWidth / TimeRangeSelector._times.length;

        return SizedBox(
          height: 30.h,
          child: Stack(
            children: [
              // Sliding background indicator - similar to your bottom nav
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                margin: EdgeInsets.only(
                  left: _selectedIndex * itemWidth,
                  top: 0,
                ),
                height: 30.h,
                width: itemWidth,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
              // Time range buttons row
              Row(
                children: TimeRangeSelector._times.asMap().entries.map((entry) {
                  final String time = entry.value;
                  final bool isSelected = time == widget.selectedRange;

                  return Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        if (widget.onChanged != null) {
                          widget.onChanged!(time);
                        }
                      },
                      borderRadius: BorderRadius.circular(6.r),
                      child: Container(
                        height: 30.h,
                        alignment: Alignment.center,
                        child: Text(
                          time,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: isSelected ? secondaryColor2 : textColor2,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class AppButton extends StatelessWidget {
  final Color buttonColor;
  final Widget child;
  final Future<void> Function()? onTap;

  const AppButton({
    super.key,
    required this.buttonColor,
    required this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(child: child),
      ),
    );
  }
}

class ReceiveTokenButton extends StatelessWidget {
  final Widget icon;
  final String coinName;
  final String coinAddress;
  final Future<void> Function()? onTap;
  final Future<void> Function()? onScanTap;
  const ReceiveTokenButton({
    super.key,
    required this.icon,
    required this.coinName,
    required this.coinAddress,
    this.onTap,
    this.onScanTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(14.sp),
        height: 80.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //COIN ICON AND LABEL WITH AMOUNT
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Placeholder for coin icon
                  Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      color: offWhiteColor,
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                    child: icon,
                  ),

                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //label and amount
                      CustomTextWidget(
                        text: coinName,
                        fontSize: 16.sp,
                        color: textColor1,
                        fontWeight: FontWeight.w500,
                      ),
                      CustomTextWidget(
                        text: coinAddress,
                        fontSize: 16.sp,
                        color: textColor2,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ],
              ),

              // Placeholder for coin balance
              Row(
                children: [
                  //coin balance
                  GestureDetector(
                    onTap: onScanTap,
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(14.sp),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Assets.images.receive.image(color: textColor1),
                    ),
                  ),
                  SizedBox(width: 8),

                  //PNL
                  Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(15.sp),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Assets.images.copy.image(color: textColor1),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentActivityButton extends StatelessWidget {
  final String walletAddress;
  final String amount;
  final String currency;
  final bool isIncoming;
  final Future<void> Function()? onTap;

  const RecentActivityButton({
    super.key,
    required this.walletAddress,
    required this.amount,
    required this.currency,
    required this.isIncoming,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TransactionDetailsScreen()),
      ),
      child: Container(
        padding: EdgeInsets.all(12.sp),
        height: 80.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: secondaryColor4,
                  radius: 25.r,
                  child: isIncoming
                      ? Assets.images.incoming.image(
                          height: 25.h,
                          width: 25.w,
                          color: Colors.green,
                        )
                      : Assets.images.outcoming.image(
                          height: 25.h,
                          width: 25.w,
                          color: Colors.red,
                        ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      text: isIncoming ? 'Received' : 'Sent',
                      fontSize: 16.sp,
                      color: textColor1,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomTextWidget(
                      text: isIncoming
                          ? 'From $walletAddress'
                          : 'To $walletAddress',
                      fontSize: 14.sp,
                      color: textColor2,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomTextWidget(
                  text: amount,
                  fontSize: 16.sp,
                  color: isIncoming ? Colors.green : Colors.red,
                  fontWeight: FontWeight.w500,
                ),
                CustomTextWidget(
                  text: currency,
                  fontSize: 14.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
