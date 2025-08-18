import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/authentication/verify_email_screen.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/UI/widgets/textfields.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    text: 'Sign Up',
                    fontSize: 24,
                    color: textColor1,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 100),

                  // Email
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextWidget(
                          text: 'Username',
                          fontSize: 16,
                          color: textColor1,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h),
                  AuthTextFormField(
                    hintText: '@username',
                    controller: TextEditingController(),
                    primaryBorderColor: secondaryColor,
                    errorBorderColor: Colors.red,
                  ),
                  SizedBox(height: 16.h),

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
                        builder: (context) => const VerifyEmailScreen(),
                      ),
                    ),
                    buttonColor: secondaryColor,
                    child: CustomTextWidget(
                      text: 'Sign Up',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
