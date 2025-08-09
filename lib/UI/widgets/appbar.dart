import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});
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

class RecentActivityAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const RecentActivityAppbar({super.key});

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
            text: 'Recent Activity',
            fontSize: 24.sp,
            color: textColor1,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}

class TokenScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TokenScreenAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(60.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: backgroundColor,
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(CupertinoIcons.back, color: Colors.white, size: 26.sp),
          ),
          SizedBox(width: 6.w),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 20.r,
            child: Assets.images.bitcoin.image(),
          ),
          SizedBox(width: 10.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: 'Bitcoin',
                fontSize: 18.sp,
                color: textColor1,
                fontWeight: FontWeight.bold,
              ),
              CustomTextWidget(
                text: 'BTC',
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

class ReceiveScreenAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const ReceiveScreenAppbar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(40.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: backgroundColor,
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(CupertinoIcons.back, color: Colors.white, size: 20.sp),
          ),
          SizedBox(width: 12.w),

          CustomTextWidget(
            text: 'Your Bitcoin Address',
            fontSize: 16.sp,
            color: textColor1,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
