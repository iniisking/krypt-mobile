import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class SeedPhrasePage2 extends StatelessWidget {
  final PageController pageController;
  const SeedPhrasePage2({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10.h),

          Assets.images.done.image(
            width: 70.w,
            height: 70.h,
            fit: BoxFit.cover,
          ),

          SizedBox(height: 20.h),
          CustomTextWidget(
            text: 'Import Accounts',
            fontSize: 24.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          CustomTextWidget(
            text: 'We found 1 account',
            fontSize: 16.sp,
            color: textColor2,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              padding: EdgeInsets.fromLTRB(12.w, 2.h, 2.w, 2.h),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12.r),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    text: '1 accounts selected',
                    fontSize: 16.sp,
                    color: textColor1,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.center,
                  ),

                  Row(
                    children: [
                      CustomTextWidget(
                        text: 'Select All',
                        fontSize: 16.sp,
                        color: textColor2,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.center,
                      ),
                      Checkbox(value: false, onChanged: (value) {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              // padding: EdgeInsets.symmetric(vertical: 14.h),
              width: double.infinity.w,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Column(
                children: [
                  //NAME
                  Padding(
                    padding: EdgeInsets.fromLTRB(12.w, 2.h, 2.w, 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextWidget(
                          text: 'Account 1',
                          fontSize: 18.sp,
                          color: textColor1,
                          fontWeight: FontWeight.normal,
                        ),
                        Checkbox(value: false, onChanged: (value) {}),
                      ],
                    ),
                  ),
                  Divider(color: backgroundColor),
                  SizedBox(height: 10.h),
                  //SYMBOL
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //COIN ICON AND LABEL WITH AMOUNT
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Placeholder for coin icon
                            Container(
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                color: offWhiteColor,
                                borderRadius: BorderRadius.circular(14.r),
                              ),
                              child: Assets.images.bitcoinOutline.image(
                                width: 24.sp,
                                height: 24.sp,
                              ),
                            ),

                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                //label and amount
                                CustomTextWidget(
                                  text: 'Bitcoin',
                                  fontSize: 16.sp,
                                  color: textColor1,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomTextWidget(
                                  text: '0 BTC',
                                  fontSize: 16.sp,
                                  color: textColor2,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                        CustomTextWidget(
                          text: '1A1z...vfNa',
                          fontSize: 16.sp,
                          color: textColor1,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Divider(color: backgroundColor),
                  SizedBox(height: 10.h),
                  //NETWORK
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //COIN ICON AND LABEL WITH AMOUNT
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Placeholder for coin icon
                            Container(
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                color: offWhiteColor,
                                borderRadius: BorderRadius.circular(14.r),
                              ),
                              child: Assets.images.ethereumOutline.image(
                                width: 24.sp,
                                height: 24.sp,
                              ),
                            ),

                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                //label and amount
                                CustomTextWidget(
                                  text: 'Ehereum',
                                  fontSize: 16.sp,
                                  color: textColor1,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomTextWidget(
                                  text: '0 ETH',
                                  fontSize: 16.sp,
                                  color: textColor2,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                        CustomTextWidget(
                          text: '1A1z...vfNa',
                          fontSize: 16.sp,
                          color: textColor1,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Divider(color: backgroundColor),
                  SizedBox(height: 10.h),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //COIN ICON AND LABEL WITH AMOUNT
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Placeholder for coin icon
                            Container(
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                color: offWhiteColor,
                                borderRadius: BorderRadius.circular(14.r),
                              ),
                              child: Assets.images.usdtOutline.image(
                                width: 24.sp,
                                height: 24.sp,
                              ),
                            ),

                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                //label and amount
                                CustomTextWidget(
                                  text: 'USD Tether',
                                  fontSize: 16.sp,
                                  color: textColor1,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomTextWidget(
                                  text: '0 USDT',
                                  fontSize: 16.sp,
                                  color: textColor2,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                        CustomTextWidget(
                          text: '1A1z...vfNa',
                          fontSize: 16.sp,
                          color: textColor1,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Divider(color: backgroundColor),
                  SizedBox(height: 10.h),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //COIN ICON AND LABEL WITH AMOUNT
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Placeholder for coin icon
                            Container(
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                color: offWhiteColor,
                                borderRadius: BorderRadius.circular(14.r),
                              ),
                              child: Assets.images.solanaOutline.image(
                                width: 24.sp,
                                height: 24.sp,
                              ),
                            ),

                            SizedBox(width: 10.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                //label and amount
                                CustomTextWidget(
                                  text: 'Solana',
                                  fontSize: 16.sp,
                                  color: textColor1,
                                  fontWeight: FontWeight.w500,
                                ),
                                CustomTextWidget(
                                  text: '0 SOL',
                                  fontSize: 16.sp,
                                  color: textColor2,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ],
                        ),
                        CustomTextWidget(
                          text: '1A1z...vfNa',
                          fontSize: 16.sp,
                          color: textColor1,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),

          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 16.w),
          //   child: SeedPhraseTextField(
          //     hintText: 'Recovery Phrase',
          //     controller: TextEditingController(),
          //     primaryBorderColor: secondaryColor,
          //     errorBorderColor: Colors.red,
          //   ),
          // ),
          SizedBox(height: 20.h),
          CustomTextWidget(
            text: 'Find more accounts',
            fontSize: 16.sp,
            color: textColor1,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 10.h),
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
                text: 'Continue',
                fontSize: 18,
                color: backgroundColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
