import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/authentication/log_in_screen.dart';
import 'package:krypt_mobile/UI/screens/authentication/seed_phrase_authentication_screens.dart';
import 'package:krypt_mobile/UI/screens/authentication/sign_up_screen.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Assets.lottie.loadingCryptoApp.lottie(
                    delegates: LottieDelegates(
                      values: [
                        ValueDelegate.colorFilter(
                          const ['**'], // `**` targets all layers
                          value: const ColorFilter.mode(
                            Color(0xFF9886E5),
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  AppButton(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    ),
                    buttonColor: secondaryColor,
                    child: CustomTextWidget(
                      text: 'Create a new wallet',
                      fontSize: 16,
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => showSignInOptions(context),
                    child: CustomTextWidget(
                      text: 'I already have a wallet',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> showSignInOptions(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: blackColor,

    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.all(30.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextWidget(
              text: 'Sign in with',
              fontSize: 18.sp,
              color: textColor1,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.h),
            CustomTextWidget(
              text: 'Select Your Method',
              fontSize: 14.sp,
              color: textColor2,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
            //EMAIL/PASSWORD BUTTON
            AppButton(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LogInScreen()),
              ),
              buttonColor: darkGreyColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.email.image(
                    width: 16.w,
                    height: 16.h,
                    color: textColor1,
                  ),
                  SizedBox(width: 8.w),
                  CustomTextWidget(
                    text: 'Email/Password',
                    fontSize: 16,
                    color: textColor1,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),

            //SEED PHRASE BUTTON
            AppButton(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SeedPhraseAuthenticationScreens(),
                ),
              ),
              buttonColor: darkGreyColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.images.seedPhrase.image(
                    width: 16.w,
                    height: 16.h,
                    color: textColor1,
                  ),
                  SizedBox(width: 8.w),
                  CustomTextWidget(
                    text: 'Import Seed Phrase',
                    fontSize: 16,
                    color: textColor1,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}
