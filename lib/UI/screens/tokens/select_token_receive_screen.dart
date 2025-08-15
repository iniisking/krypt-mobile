import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/tokens/receive_screen.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/buttons.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';

class SelectTokenReceiveScreen extends StatelessWidget {
  const SelectTokenReceiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: SelectTokenReceiveAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            ReceiveTokenButton(
              icon: Assets.images.bitcoinOutline.image(),
              coinName: 'Bitcoin',
              coinAddress: '1A1z...vfNa',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceiveScreen()),
              ),
              onScanTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceiveScreen()),
              ),
            ),
            SizedBox(height: 10.h),
            ReceiveTokenButton(
              icon: Assets.images.ethereumOutline.image(),
              coinName: 'Ethereum',
              coinAddress: '1A1z...vfNa',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceiveScreen()),
              ),
              onScanTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceiveScreen()),
              ),
            ),
            SizedBox(height: 10.h),
            ReceiveTokenButton(
              icon: Assets.images.solanaOutline.image(),
              coinName: 'Solana',
              coinAddress: '1A1z...vfNa',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceiveScreen()),
              ),
              onScanTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceiveScreen()),
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
