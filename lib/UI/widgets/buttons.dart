import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:krypt_mobile/UI/widgets/colors.dart';
import 'package:krypt_mobile/UI/widgets/text.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final Future<void> Function()? onTap;
  final Widget icon;
  final double? height;
  final double? width;

  const ActionButton({
    super.key,
    required this.label,
    this.onTap,
    required this.icon,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 78.h,
        width: width ?? 120.w,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(height: 5.h),
              CustomTextWidget(
                text: label,
                fontSize: 12.sp,
                color: textColor2,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TokenButton extends StatelessWidget {
  final String coinName;
  final String coinAmount;
  final String coinBalance;
  final String pnl;
  final Widget coinIcon;
  final bool profit;
  const TokenButton({
    super.key,
    required this.coinName,
    required this.coinAmount,
    required this.coinBalance,
    required this.pnl,
    required this.coinIcon,
    required this.profit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      height: 80.h,
      width: double.infinity.w,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //COIN ICON AND LABEL WITH AMOUNT
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Placeholder for coin icon
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 25.r,
                  child: coinIcon,
                ),

                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //label and amount
                    CustomTextWidget(
                      text: coinName,
                      fontSize: 16.sp,
                      color: textColor1,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomTextWidget(
                      text: coinAmount,
                      fontSize: 14.sp,
                      color: textColor2,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ],
            ),

            // Placeholder for coin balance
            Column(
              children: [
                //coin balance
                CustomTextWidget(
                  text: coinBalance,
                  fontSize: 16.sp,
                  color: textColor1,
                  fontWeight: FontWeight.w500,
                ),

                //PNL
                CustomTextWidget(
                  text: pnl,
                  fontSize: 14.sp,
                  color: profit ? greenColor2 : redColor,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// keep your color names

class TimeRangeSelector extends StatefulWidget {
  final String selectedRange;
  final ValueChanged<String>? onChanged;

  const TimeRangeSelector({
    super.key,
    this.selectedRange = '1H',
    this.onChanged,
  });

  static const List<String> _times = ['1H', '1D', '1W', '1M', 'YTD', 'ALL'];

  @override
  State<TimeRangeSelector> createState() => _TimeRangeSelectorState();
}

class _TimeRangeSelectorState extends State<TimeRangeSelector>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = TimeRangeSelector._times.indexOf(widget.selectedRange);

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(TimeRangeSelector oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedRange != widget.selectedRange) {
      final newIndex = TimeRangeSelector._times.indexOf(widget.selectedRange);
      if (newIndex != -1 && newIndex != _selectedIndex) {
        _animateToIndex(newIndex);
      }
    }
  }

  void _animateToIndex(int newIndex) {
    _selectedIndex = newIndex;
    _animationController.forward(from: 0);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth =
            constraints.maxWidth / TimeRangeSelector._times.length;

        return SizedBox(
          height: 30.h,
          child: Stack(
            children: [
              // Sliding background indicator - similar to your bottom nav
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                margin: EdgeInsets.only(
                  left: _selectedIndex * itemWidth,
                  top: 0,
                ),
                height: 30.h,
                width: itemWidth,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
              // Time range buttons row
              Row(
                children: TimeRangeSelector._times.asMap().entries.map((entry) {
                  final String time = entry.value;
                  final bool isSelected = time == widget.selectedRange;

                  return Expanded(
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        if (widget.onChanged != null) {
                          widget.onChanged!(time);
                        }
                      },
                      borderRadius: BorderRadius.circular(6.r),
                      child: Container(
                        height: 30.h,
                        alignment: Alignment.center,
                        child: Text(
                          time,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: isSelected ? secondaryColor2 : textColor2,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
