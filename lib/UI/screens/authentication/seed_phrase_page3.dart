import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/authentication/set_up_complete_screen.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

class SeedPhrasePage3 extends StatefulWidget {
  final PageController pageController;

  const SeedPhrasePage3({super.key, required this.pageController});

  @override
  State<SeedPhrasePage3> createState() => _SeedPhrasePage3State();
}

class _SeedPhrasePage3State extends State<SeedPhrasePage3> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Assets.lottie.lock.lottie(
          height: 300.h,
          delegates: LottieDelegates(
            values: [
              ValueDelegate.colorFilter(
                const ['**'], // `**` targets all layers
                value: const ColorFilter.mode(
                  Color(0xFF9886E5),
                  BlendMode.color,
                ),
              ),
            ],
          ),
        ),
        CustomTextWidget(
          text: 'Protect your wallet',
          fontSize: 24.sp,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.h),
        CustomTextWidget(
          text:
              'Adding biometric security will\n ensure that you are the only one\n that can access your wallet.',
          fontSize: 16.sp,
          color: textColor2,
          fontWeight: FontWeight.w500,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Container(
            padding: EdgeInsets.all(12.sp),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Assets.images.faceId.image(
                      width: 40.w,
                      height: 40.h,
                      color: textColor1,
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextWidget(
                          text: 'Device',
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                        CustomTextWidget(
                          text: 'Use Device Authentication',
                          fontSize: 14.sp,
                          color: textColor2,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),

        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: AppButton(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SetUpCompleteScreen()),
            ),
            buttonColor: secondaryColor,
            child: CustomTextWidget(
              text: 'Next',
              fontSize: 16,
              color: backgroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 40.h),
      ],
    );
  }
}
