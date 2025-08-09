import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Future<void> Function()? onTap;
  final Widget icon;

  const ActionButton({
    super.key,
    required this.label,
    this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80.h,
        width: 120.w,
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

class CoinButton extends StatelessWidget {
  final String coinName;
  final String coinAmount;
  final String coinBalance;
  final String pnl;
  final Widget coinIcon;
  final bool profit;
  const CoinButton({
    super.key,
    required this.coinName,
    required this.coinAmount,
    required this.coinBalance,
    required this.pnl,
    required this.coinIcon,
    required this.profit,
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
