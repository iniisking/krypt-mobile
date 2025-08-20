import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/navigation/main_screen.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/UI/widgets/widgets.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class SeedPhraseScreen extends StatelessWidget {
  const SeedPhraseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextWidget(
                  text: 'Recovery Phrase',
                  fontSize: 24.sp,
                  color: textColor1,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 20.h),
                CustomTextWidget(
                  text:
                      'This is the only way you will be able\nto recover your account. Please store it\nsomewhere safe!',
                  fontSize: 16.sp,
                  color: textColor2,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [SeedPhraseContainer(), SeedPhraseContainer()],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [SeedPhraseContainer(), SeedPhraseContainer()],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [SeedPhraseContainer(), SeedPhraseContainer()],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [SeedPhraseContainer(), SeedPhraseContainer()],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [SeedPhraseContainer(), SeedPhraseContainer()],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [SeedPhraseContainer(), SeedPhraseContainer()],
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.copy.image(
                      height: 20,
                      width: 20,
                      color: textColor1,
                    ),
                    SizedBox(width: 8.w),
                    CustomTextWidget(
                      text: 'Copy to clipboard',
                      fontSize: 16.sp,
                      color: textColor1,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Spacer(),
                AppButton(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  ),
                  buttonColor: secondaryColor,
                  child: CustomTextWidget(
                    text: 'Ok, I saved it somewhere',
                    fontSize: 16.sp,
                    color: backgroundColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
