import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/tokens/enter_amount_screen.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/UI/widgets/textfields.dart';

class SendScreen extends StatelessWidget {
  const SendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: SendScreenAppBar(),
      body: Column(
        children: [
          SizedBox(height: 16.h),
          SendTextField(),
          Spacer(), // 👈 pushes the button to the bottom
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppButton(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EnterAmountScreen(),
                ),
              ),
              buttonColor: buttonColor,
              child: CustomTextWidget(
                text: 'Next',
                fontSize: 16.sp,
                color: backgroundColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 30.h), // 👈 optional padding from bottom
        ],
      ),
    );
  }
}
