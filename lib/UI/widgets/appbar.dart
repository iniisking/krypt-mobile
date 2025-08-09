import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(60.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: backgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          CustomTextWidget(
            text: 'Welcome, @iniisking',
            fontSize: 20.sp,
            color: textColor1,
            fontWeight: FontWeight.bold,
          ),
          Assets.images.scan.image(
            width: 25,
            height: 25,
            color: whiteIconColor,
          ),
        ],
      ),
    );
  }
}
