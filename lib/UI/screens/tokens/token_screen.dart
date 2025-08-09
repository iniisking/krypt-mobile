import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/tokens/receive_screen.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/UI/widgets/widgets.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class TokenScreen extends StatefulWidget {
  const TokenScreen({super.key});

  @override
  State<TokenScreen> createState() => _TokenScreenState();
}

class _TokenScreenState extends State<TokenScreen> {
  String _range = '1H';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      appBar: TokenScreenAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24.h),
            //TOKEN BALANCE SECTION
            CustomTextWidget(
              text: '\$115,294.39',
              fontSize: 44.sp,
              color: textColor1,
              fontWeight: FontWeight.bold,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  text: '+\$3,583.90',
                  fontSize: 16.sp,
                  color: greenColor2,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(width: 10.w),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.r, vertical: 2.r),
                  decoration: BoxDecoration(
                    color: greenColor2,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: CustomTextWidget(
                    text: '+\$1.90',
                    fontSize: 16.sp,
                    color: backgroundColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 220.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  TimeRangeSelector(
                    selectedRange: _range,
                    onChanged: (newRange) {
                      setState(() => _range = newRange);
                      // do whatever you want with newRange
                    },
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActionButton(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReceiveScreen(),
                          ),
                        ),
                        height: 65.h,
                        width: 100.w,
                        label: 'Receive',
                        icon: Assets.images.receive.image(
                          height: 20.h,
                          width: 20.w,
                          color: secondaryColor2,
                        ),
                      ),
                      ActionButton(
                        height: 65.h,
                        width: 100.w,
                        label: 'Send',
                        icon: Assets.images.send.image(
                          height: 25.h,
                          width: 25.w,
                          color: secondaryColor2,
                        ),
                      ),
                      ActionButton(
                        height: 65.h,
                        width: 100.w,
                        label: 'Share',
                        icon: Assets.images.share.image(
                          height: 25.h,
                          width: 25.w,
                          color: secondaryColor2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  //POSITION SECTION
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text: 'Your Position',
                        fontSize: 16.sp,
                        color: textColor2,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  YourPositionWidget(
                    balance: '0',
                    value: '\$0.00',
                    return24h: '\$0.00',
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text: 'Info',
                        fontSize: 16.sp,
                        color: textColor2,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  InfoWidget(),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
