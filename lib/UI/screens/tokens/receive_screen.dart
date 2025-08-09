import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class ReceiveScreen extends StatelessWidget {
  const ReceiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ReceiveScreenAppbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              height: 200.h,
              width: 200.w,
            ),
          ),
          SizedBox(height: 40.h),
          Center(
            child: CustomTextWidget(
              text: 'Your Bitcoin Address',
              fontSize: 18.sp,
              color: textColor1,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          CustomTextWidget(
            text:
                'Use this address to receive tokens and\ncollectibles on Solana.',
            fontSize: 14.sp,
            color: textColor2,
            fontWeight: FontWeight.normal,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 60.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppButton(
              buttonColor: darkGreyColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextWidget(
                    text: '1HcXz9...fR9vJ',
                    fontSize: 16.sp,
                    color: whiteIconColor,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(width: 8.w),
                  Assets.images.copy.image(
                    width: 17.w,
                    height: 17.h,
                    color: whiteIconColor,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppButton(
              buttonColor: secondaryColor3,
              child: CustomTextWidget(
                text: 'Share',
                fontSize: 16.sp,
                color: backgroundColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
