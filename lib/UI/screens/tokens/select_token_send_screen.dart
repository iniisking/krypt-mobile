import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/tokens/send_screen.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class SelectTokenSendScreen extends StatelessWidget {
  const SelectTokenSendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: SelectTokenSendAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            //BITCOIN BUTTON
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SendScreen()),
                );
              },
              child: TokenButton(
                coinName: 'Bitcoin',
                coinAmount: '0.005 BTC',

                coinIcon: Assets.images.bitcoin.image(),
              ),
            ),

            SizedBox(height: 10.h),
            //ETHEREUM BUTTON
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SendScreen()),
                );
              },
              child: TokenButton(
                coinName: 'Ethereum',
                coinAmount: '0.1 ETH',

                coinIcon: Assets.images.ethereum.image(),
              ),
            ),
            SizedBox(height: 10.h),
            //SOLANA  BUTTON
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SendScreen()),
                );
              },
              child: TokenButton(
                coinName: 'Solana',
                coinAmount: '2.0 SOL',

                coinIcon: Assets.images.solana.image(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
