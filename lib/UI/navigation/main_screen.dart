import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/screens/home/home_screen.dart';
import 'package:krypt_mobile/UI/screens/profile/profile_screen.dart';
import 'package:krypt_mobile/UI/screens/recent%20activity/recent_activity_screen.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/controller/bottomnav_controller.dart';
import 'package:krypt_mobile/gen/assets.gen.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> _screens = [
    HomeScreen(),
    RecentActivityScreen(),
    ProfileScreen(),
  ];

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<BottomNavProvider>(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth / _screens.length;

    return Scaffold(
      body: IndexedStack(index: navProvider.currentIndex, children: _screens),
      bottomNavigationBar: Container(
        color: backgroundColor,
        height: 75.h,
        child: Stack(
          children: [
            // Sliding underline
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              margin: EdgeInsets.only(
                left:
                    navProvider.currentIndex * itemWidth +
                    (itemWidth - 60.w) / 2,
                top: 0.h,
              ),
              height: 4.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(2.r),
              ),
            ),

            // Navigation icons (explicit, no loops)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => navProvider.updateIndex(0),
                  child: SizedBox(
                    width: itemWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 15.h),
                        navProvider.currentIndex == 0
                            ? Assets.images.homeFill.image(
                                width: 28.w,
                                height: 28.h,
                                color: secondaryColor,
                              )
                            : Assets.images.homeOutline.image(
                                width: 28.w,
                                height: 28.h,
                                color: greyColor,
                              ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => navProvider.updateIndex(1),
                  child: SizedBox(
                    width: itemWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 15.h),
                        navProvider.currentIndex == 1
                            ? Assets.images.clockFill.image(
                                width: 28.w,
                                height: 28.h,
                                // color: secondaryColor,
                              )
                            : Assets.images.clockOutline.image(
                                width: 28.w,
                                height: 28.h,
                                color: greyColor,
                              ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => navProvider.updateIndex(2),
                  child: SizedBox(
                    width: itemWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 15.h),
                        navProvider.currentIndex == 2
                            ? Assets.images.profileFill.image(
                                width: 28.w,
                                height: 28.h,
                                color: secondaryColor,
                              )
                            : Assets.images.profileOutline.image(
                                width: 28.w,
                                height: 28.h,
                                color: greyColor,
                              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
