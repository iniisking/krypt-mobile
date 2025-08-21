import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/UI/widgets/textfields.dart';

class SeedPhrasePage1 extends StatelessWidget {
  final PageController pageController;
  const SeedPhrasePage1({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 160.h),
        CustomTextWidget(
          text: 'Recovery Phrase',
          fontSize: 24.sp,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.h),
        CustomTextWidget(
          text:
              'Restore an existing wallet with your\n 12 or 24-word recovery phrase.',
          fontSize: 16.sp,
          color: textColor2,
          fontWeight: FontWeight.w500,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SeedPhraseTextField(
            hintText: 'Recovery Phrase',
            controller: TextEditingController(),
            primaryBorderColor: secondaryColor,
            errorBorderColor: Colors.red,
          ),
        ),

        SizedBox(height: 32.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: AppButton(
            onTap: () => pageController.nextPage(
              // CHANGE 3: Use the passed pageController instead of _pageController
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            ),
            buttonColor: secondaryColor,
            child: CustomTextWidget(
              text: 'Import Recovery Phrase',
              fontSize: 16,
              color: backgroundColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
