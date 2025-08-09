import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';

class YourPositionWidget extends StatelessWidget {
  final String balance;
  final String value;
  final String return24h;
  const YourPositionWidget({
    super.key,
    required this.balance,
    required this.value,
    required this.return24h,
    s,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12.sp),
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      text: 'Balance',
                      fontSize: 16.sp,
                      color: textColor2,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(height: 4.h),
                    CustomTextWidget(
                      text: balance,
                      fontSize: 18.sp,
                      color: textColor1,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12.sp),
                height: 80.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      text: 'Value',
                      fontSize: 16.sp,
                      color: textColor2,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(height: 4.h),
                    CustomTextWidget(
                      text: value,
                      fontSize: 18.sp,
                      color: textColor1,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.all(12.sp),
          height: 65.h,
          width: double.infinity.w,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextWidget(
                text: '24h Return',
                fontSize: 18.sp,
                color: textColor1,
                fontWeight: FontWeight.w500,
              ),
              CustomTextWidget(
                text: return24h,
                fontSize: 18.sp,
                color: textColor2,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
