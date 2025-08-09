import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';

class TokenScreen extends StatelessWidget {
  const TokenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      appBar: TokenScreenAppBar(),
      body: Column(
        children: [
          SizedBox(height: 30.h),
          //TOKEN BALANCE SECTION
          CustomTextWidget(
            text: '\$115,294.39',
            fontSize: 40.sp,
            color: textColor1,
            fontWeight: FontWeight.bold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(
                text: '+\$3,583.90',
                fontSize: 14.sp,
                color: greenColor2,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(width: 10.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.r, vertical: 2.r),
                decoration: BoxDecoration(
                  color: greenColor2,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: CustomTextWidget(
                  text: '+\$1.90',
                  fontSize: 14.sp,
                  color: backgroundColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 150.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextWidget(
                text: '1H',
                fontSize: 14.sp,
                color: textColor2,
                fontWeight: FontWeight.bold,
              ),
              CustomTextWidget(
                text: '1H',
                fontSize: 14.sp,
                color: textColor2,
                fontWeight: FontWeight.bold,
              ),
              CustomTextWidget(
                text: '1H',
                fontSize: 14.sp,
                color: textColor2,
                fontWeight: FontWeight.bold,
              ),
              CustomTextWidget(
                text: '1H',
                fontSize: 14.sp,
                color: textColor2,
                fontWeight: FontWeight.bold,
              ),
              CustomTextWidget(
                text: '1H',
                fontSize: 14.sp,
                color: textColor2,
                fontWeight: FontWeight.bold,
              ),
              CustomTextWidget(
                text: '1H',
                fontSize: 14.sp,
                color: textColor2,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
