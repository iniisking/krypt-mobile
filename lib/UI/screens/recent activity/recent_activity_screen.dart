import 'package:flutter/material.dart';
import 'package:krypt_mobile/UI/widgets/appbar.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';

class RecentActivityScreen extends StatelessWidget {
  const RecentActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const RecentActivityAppbar(),
      body: Center(
        child: Text(
          'Recent Activity Screen',
          style: TextStyle(color: textColor1, fontSize: 20),
        ),
      ),
    );
  }
}
