import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/authentication/device_auth_screen.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/UI/widgets/textfields.dart';

class VerifyEmailLoginScreen extends StatelessWidget {
  const VerifyEmailLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(CupertinoIcons.back, color: Colors.white, size: 26.sp),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  CustomTextWidget(
                    text: 'Enter the code',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: textColor1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 20.w),
              CodeVeriInput(),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Resend code',
                    style: TextStyle(
                      color: textColor1,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.w),
              AppButton(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DeviceAuthScreen(),
                  ),
                ),
                buttonColor: secondaryColor,
                child: CustomTextWidget(
                  text: 'Log In',
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
