import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class SendTextField extends StatelessWidget {
  const SendTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 16.sp,
        color: textColor1,
        fontWeight: FontWeight.w700,
      ),
      cursorColor: buttonColor,
      cursorWidth: 2.5.w,
      keyboardType: TextInputType.multiline,
      minLines: 1,
      maxLines: null, // null = infinite growth

      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: textColor2, width: 1.w),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: textColor2, width: 1.w),
        ),
        hintText: 'username or address',
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: textColor2,
          fontWeight: FontWeight.w600,
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 0.w, minHeight: 0.h),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 8.w, right: 4.w),
          child: CustomTextWidget(
            text: 'To:',
            fontSize: 14.sp,
            color: textColor2,
            fontWeight: FontWeight.w600,
          ),
        ),
        suffixIconConstraints: BoxConstraints(minWidth: 0.w, minHeight: 0.h),
        suffixIcon: Padding(
          padding: EdgeInsets.only(left: 4.w, right: 8.w),
          child: Assets.images.scan.image(
            width: 20.w,
            height: 20.h,
            color: whiteIconColor,
          ),
        ),
      ),
    );
  }
}

class EnterAmountTextField extends StatelessWidget {
  const EnterAmountTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        style: TextStyle(fontSize: 30, color: textColor1),
        decoration: InputDecoration(
          border: InputBorder.none, // 👈 no border
        ),
      ),
    );
  }
}
