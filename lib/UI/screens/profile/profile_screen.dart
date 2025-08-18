import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: ProfileAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: secondaryColor2, width: 3),
                  ),
                  child: CircleAvatar(
                    radius: 48.r,
                    backgroundColor: Colors.transparent,
                    child: Assets.images.profileFill.image(
                      width: 80.w,
                      height: 80.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              // Username
              CustomTextWidget(
                text: '@iniisking',
                fontSize: 20.sp,
                color: textColor1,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 6.h),
              // Email
              CustomTextWidget(
                text: 'iniisking@email.com',
                fontSize: 14.sp,
                color: textColor2,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
