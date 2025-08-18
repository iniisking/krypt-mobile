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
    return SafeArea(
      child: AppBar(
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
    return SafeArea(
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: backgroundColor,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                CupertinoIcons.back,
                color: Colors.white,
                size: 26.sp,
              ),
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

class SendScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SendScreenAppBar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(40.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: backgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                  size: 20.sp,
                ),
              ),
              SizedBox(width: 12.w),

              CustomTextWidget(
                text: 'BTC',
                fontSize: 16.sp,
                color: textColor1,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          CustomTextWidget(
            text: 'Next',
            fontSize: 16.sp,
            color: greyColor2,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}

class EnterAmountScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const EnterAmountScreenAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(120.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: backgroundColor,
      toolbarHeight: 120.h,
      flexibleSpace: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      CustomTextWidget(
                        text: 'Enter Amount',
                        fontSize: 18.sp,
                        color: textColor1,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(width: 40.w),
                ],
              ),
            ),
            SizedBox(height: 30.h),

            // To Address Row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        CustomTextWidget(
                          text: 'To: Account 1 (bc1q...pxuu)',
                          fontSize: 16.sp,
                          color: textColor1,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  // Edit Icon
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Assets.images.edit.image(
                      height: 16.h,
                      width: 16.w,
                      color: textColor1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

class SelectTokenSendAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const SelectTokenSendAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(40.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.clear, color: textColor1, size: 24.sp),
          ),
          SizedBox(width: 8.w),
          CustomTextWidget(
            text: 'Select Token',
            fontSize: 16.sp,
            color: textColor1,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}

class SelectTokenReceiveAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(40.h);
  const SelectTokenReceiveAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.clear, color: textColor1, size: 24.sp),
          ),
          SizedBox(width: 8.w),
          CustomTextWidget(
            text: 'Receive',
            fontSize: 16.sp,
            color: textColor1,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.h);

  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomTextWidget(
            text: 'Profile',
            fontSize: 24.sp,
            color: textColor1,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
