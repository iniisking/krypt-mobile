import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/authentication/seed_phrase_page1.dart';
import 'package:krypt_mobile/UI/screens/authentication/seed_phrase_page2.dart';
import 'package:krypt_mobile/UI/screens/authentication/seed_phrase_page3.dart';
import 'package:krypt_mobile/UI/screens/authentication/set_up_complete_screen.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SeedPhraseAuthenticationScreens extends StatefulWidget {
  const SeedPhraseAuthenticationScreens({super.key});

  @override
  State<SeedPhraseAuthenticationScreens> createState() =>
      _SeedPhraseAuthenticationScreensState();
}

class _SeedPhraseAuthenticationScreensState
    extends State<SeedPhraseAuthenticationScreens> {
  final _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            GestureDetector(
              onTap: () {
                if (_currentPage == 0) {
                  Navigator.pop(context);
                } else {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                }
              },
              child: Icon(
                CupertinoIcons.back,
                color: Colors.white,
                size: 26.sp,
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: WormEffect(
                dotHeight: 4.h,
                dotWidth: 70.w,
                spacing: 8.w,
                dotColor: greyColor4,
                activeDotColor: offWhiteColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                if (_currentPage < 2) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                } else {
                  // Handle the case when the user is on the last page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SetUpCompleteScreen(),
                    ),
                  );
                }
              },
              child: CustomTextWidget(
                text: 'Next',
                fontSize: 18.sp,
                color: textColor1,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              controller: _pageController,
              children: [
                SeedPhrasePage1(pageController: _pageController),
                SeedPhrasePage2(pageController: _pageController),
                SeedPhrasePage3(pageController: _pageController),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
