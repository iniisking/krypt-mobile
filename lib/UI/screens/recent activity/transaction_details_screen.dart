import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/UI/widgets/widgets.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TransactionDetailsScreenAppbar(),
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: secondaryColor4,
              radius: 40.r,
              child: Assets.images.incoming.image(
                height: 40.h,
                width: 40.w,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16.h),
            CustomTextWidget(
              text: '-0.05707 BTC',
              fontSize: 38.sp,
              color: textColor1,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TransactionWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
