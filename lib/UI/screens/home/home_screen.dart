import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppbar(),
      body: Column(
        children: [
          CustomTextWidget(
            text: '\$43,294.39',
            fontSize: 38.sp,
            color: textColor1,
            fontWeight: FontWeight.bold,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextWidget(
                text: '+\$3,583.90',
                fontSize: 12.sp,
                color: greenColor2,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(width: 10.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.r, vertical: 2.r),
                decoration: BoxDecoration(
                  color: greenColor3,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: CustomTextWidget(
                  text: '+\$1.90',
                  fontSize: 12.sp,
                  color: greenColor2,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          //BALANCE SECTION
          SizedBox(height: 20.h),

          //ACTION BUTTONS SECTION(SEND/RECEIVE)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ActionButton(
                label: 'Receive',
                icon: Assets.images.receive.image(
                  height: 30,
                  width: 30,
                  color: secondaryColor2,
                ),
              ),
              ActionButton(
                label: 'Send',
                icon: Assets.images.send.image(
                  height: 35,
                  width: 35,
                  color: secondaryColor2,
                ),
              ),
            ],
          ),

          //COIN BUTTONS SECTION
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomTextWidget(
                      text: 'Tokens',
                      fontSize: 20.h,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    //TODO: SHOW/HIDE BALANCE BUTTON
                  ],
                ),
                SizedBox(height: 10.h),
                //BITCOIN BUTTON
                CoinButton(
                  coinName: 'Bitcoin',
                  coinAmount: '0.005 BTC',
                  coinBalance: '\$150.00',
                  pnl: '+\$50.00',
                  profit: true,
                  coinIcon: Assets.images.bitcoin.image(
                    height: 50.h,
                    width: 50.w,
                  ),
                ),

                SizedBox(height: 10.h),
                //ETHEREUM BUTTON
                CoinButton(
                  coinName: 'Ethereum',
                  coinAmount: '0.1 ETH',
                  coinBalance: '\$300.00',
                  pnl: '+\$5.00',
                  profit: true,
                  coinIcon: Assets.images.ethereum.image(
                    height: 50.h,
                    width: 50.w,
                  ),
                ),
                SizedBox(height: 10.h),
                //SOLANA  BUTTON
                CoinButton(
                  coinName: 'Solana',
                  coinAmount: '2.0 SOL',
                  coinBalance: '\$100.00',
                  pnl: '-\$50.00',
                  profit: false,
                  coinIcon: Assets.images.solana.image(
                    height: 50.h,
                    width: 50.w,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
