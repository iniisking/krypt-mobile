import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/recent%20activity/transaction_details_screen.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';

class RecentActivityScreen extends StatelessWidget {
  const RecentActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const RecentActivityAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Today',
                    fontSize: 16.sp,
                    color: textColor2,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              RecentActivityButton(
                walletAddress: '1A1z...vfNa',
                amount: '-0.05707',
                currency: 'SOL',
                isIncoming: false,
              ),
              SizedBox(height: 10.h),
              RecentActivityButton(
                walletAddress: '1A1z...vfNa',
                amount: '-0.05707',
                currency: 'SOL',
                isIncoming: true,
              ),
              SizedBox(height: 10.h),
              RecentActivityButton(
                walletAddress: '1A1z...vfNa',
                amount: '-0.05707',
                currency: 'BTC',
                isIncoming: true,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Jan 20, 2025',
                    fontSize: 16.sp,
                    color: textColor2,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              SizedBox(height: 10.h),

              RecentActivityButton(
                walletAddress: '1A1z...vfNa',
                amount: '-0.05707',
                currency: 'ETH',
                isIncoming: true,
              ),
              SizedBox(height: 10.h),
              RecentActivityButton(
                walletAddress: '1A1z...vfNa',
                amount: '-0.05707',
                currency: 'SOL',
                isIncoming: false,
              ),
              SizedBox(height: 10.h),
              RecentActivityButton(
                walletAddress: '1A1z...vfNa',
                amount: '-0.05707',
                currency: 'SOL',
                isIncoming: false,
              ),
              SizedBox(height: 10.h),
              RecentActivityButton(
                walletAddress: '1A1z...vfNa',
                amount: '-0.05707',
                currency: 'SOL',
                isIncoming: true,
              ),
              SizedBox(height: 10.h),
              RecentActivityButton(
                walletAddress: '1A1z...vfNa',
                amount: '-0.05707',
                currency: 'BTC',
                isIncoming: true,
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildEmptyState() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        CustomTextWidget(
          text: 'No activity',
          fontSize: 14.sp,
          color: textColor2,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 10.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 8.r),
          decoration: BoxDecoration(
            color: darkGreyColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: CustomTextWidget(
            text: 'Refresh',
            fontSize: 14.sp,
            color: textColor1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
