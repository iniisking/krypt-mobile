import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

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

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.h),
      width: double.infinity.w,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        children: [
          //NAME
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Name',
                  fontSize: 18.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
                CustomTextWidget(
                  text: 'Bitcoin',
                  fontSize: 17.sp,
                  color: textColor1,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Divider(color: backgroundColor),
          SizedBox(height: 10.h),
          //SYMBOL
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Symbol',
                  fontSize: 18.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
                CustomTextWidget(
                  text: 'BTC',
                  fontSize: 17.sp,
                  color: textColor1,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Divider(color: backgroundColor),
          SizedBox(height: 10.h),
          //NETWORK
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Network',
                  fontSize: 18.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
                CustomTextWidget(
                  text: 'Bitcoin',
                  fontSize: 17.sp,
                  color: textColor1,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Divider(color: backgroundColor),
          SizedBox(height: 10.h),

          //MARKET CAP
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Market Cap',
                  fontSize: 18.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
                CustomTextWidget(
                  text: '\$2.29T',
                  fontSize: 17.sp,
                  color: textColor1,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Divider(color: backgroundColor),
          SizedBox(height: 10.h),

          //TOTAL SUPPLY
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Total Supply',
                  fontSize: 18.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
                CustomTextWidget(
                  text: '\$19.9M',
                  fontSize: 17.sp,
                  color: textColor1,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Divider(color: backgroundColor),
          SizedBox(height: 10.h),
          //CIRCULATING SUPPLY
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Circulating Supply',
                  fontSize: 18.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
                CustomTextWidget(
                  text: '\$19.9M',
                  fontSize: 17.sp,
                  color: textColor1,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.h),
      width: double.infinity.w,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        children: [
          //DATE
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Date',
                  fontSize: 18.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
                CustomTextWidget(
                  text: 'Jan 20, 2025 at 7:00 PM',
                  fontSize: 16.sp,
                  color: textColor2,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Divider(color: backgroundColor),
          SizedBox(height: 8.h),
          //STATUS
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Status',
                  fontSize: 18.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
                CustomTextWidget(
                  text: 'Succeeded',
                  fontSize: 16.sp,
                  color: Colors.green,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Divider(color: backgroundColor),
          SizedBox(height: 8.h),
          //TO
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'To',
                  fontSize: 18.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
                Row(
                  children: [
                    CustomTextWidget(
                      text: '1A1z...vfNa',
                      fontSize: 16.sp,
                      color: textColor2,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(width: 8.w),
                    Assets.images.copy.image(
                      width: 16.w,
                      height: 16.h,
                      color: textColor2,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Divider(color: backgroundColor),
          SizedBox(height: 8.h),

          //NETWORK
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Network',
                  fontSize: 18.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
                CustomTextWidget(
                  text: 'Ethereum',
                  fontSize: 16.sp,
                  color: textColor2,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Divider(color: backgroundColor),
          SizedBox(height: 8.h),

          //NETWORK FEE
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  text: 'Network Fee',
                  fontSize: 18.sp,
                  color: textColor2,
                  fontWeight: FontWeight.normal,
                ),
                CustomTextWidget(
                  text: '-< 0.002 ETH',
                  fontSize: 16.sp,
                  color: textColor2,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SeedPhraseContainer extends StatelessWidget {
  const SeedPhraseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      height: 40.h,
      width: 150.w,
      decoration: BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: greyColor3, width: 1.5),
      ),
      child: Row(
        children: [
          CustomTextWidget(
            text: '1',
            fontSize: 16.sp,
            color: textColor2,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(width: 8.w),
          VerticalDivider(color: greyColor3, thickness: 1.5),
          SizedBox(width: 8.w),
          CustomTextWidget(
            text: 'gorilla',
            fontSize: 14.sp,
            color: textColor1,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}

class GorillaWidget extends StatelessWidget {
  final String number;
  final String text;
  final double width;
  final double height;

  const GorillaWidget({
    Key? key,
    this.number = '1',
    this.text = 'gorilla',
    this.width = 320,
    this.height = 80,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1C),
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: const Color(0xFF3A3A3A), width: 2),
      ),
      child: Row(
        children: [
          // Number section
          Container(
            width: height, // Square section
            height: height,
            decoration: BoxDecoration(
              color: const Color(0xFF2A2A2A),
              borderRadius: BorderRadius.circular(38),
              border: Border.all(color: const Color(0xFF3A3A3A), width: 1),
            ),
            child: Center(
              child: Text(
                number,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF888888),
                  fontFamily: 'SF Pro Display',
                ),
              ),
            ),
          ),
          // Text section
          Expanded(
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontFamily: 'SF Pro Display',
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
