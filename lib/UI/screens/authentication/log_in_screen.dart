import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/authentication/sign_up_screen.dart';
import 'package:krypt_mobile/UI/screens/authentication/verify_email_login_screen.dart';
import 'package:krypt_mobile/UI/screens/authentication/verify_email_screen.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/UI/widgets/textfields.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextWidget(
                    text: 'Log In',
                    fontSize: 24,
                    color: textColor1,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 40),

                  // Password
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextWidget(
                          text: 'Email',
                          fontSize: 16,
                          color: textColor1,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h),
                  AuthTextFormField(
                    hintText: 'user@email',
                    controller: TextEditingController(),
                    primaryBorderColor: secondaryColor,
                    errorBorderColor: Colors.red,
                  ),
                  SizedBox(height: 16.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextWidget(
                          text: 'Password',
                          fontSize: 16,
                          color: textColor1,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h),
                  AuthTextFormField(
                    hintText: 'Enter strong password',
                    controller: TextEditingController(),
                    primaryBorderColor: secondaryColor,
                    errorBorderColor: Colors.red,
                  ),

                  SizedBox(height: 150.h),
                  AppButton(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerifyEmailLoginScreen(),
                      ),
                    ),
                    buttonColor: secondaryColor,
                    child: CustomTextWidget(
                      text: 'Continue',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextWidget(
                        text: 'Don\'t have an account? ',
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        ),
                        child: CustomTextWidget(
                          text: 'Sign up',
                          fontSize: 14,
                          color: secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
