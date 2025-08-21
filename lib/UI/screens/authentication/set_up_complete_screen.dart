import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/navigation/main_screen.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

class SetUpCompleteScreen extends StatelessWidget {
  const SetUpCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SizedBox(height: 100.h),
          Assets.lottie.success.lottie(
            height: 300.h,
            delegates: LottieDelegates(),
          ),
          SizedBox(height: 100.h),
          CustomTextWidget(
            text: 'You\'re all ready!',
            fontSize: 24.sp,
            color: textColor1,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          CustomTextWidget(
            text: 'You can now fully enjoy your wallet.',
            fontSize: 18.sp,
            color: textColor2,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
          ),
          Spacer(),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppButton(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MainScreen()),
              ),
              buttonColor: secondaryColor,
              child: CustomTextWidget(
                text: 'Get Started',
                fontSize: 16,
                color: backgroundColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
