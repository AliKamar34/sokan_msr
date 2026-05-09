import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

class BarItem extends StatelessWidget {
  final String month;
  final double height;
  final bool isHighlighted;

  const BarItem({
    super.key,
    required this.month,
    required this.height,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return Expanded(
      child: Column(
        spacing: 8.h,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
                gradient: isHighlighted
                    ? LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [colors.primaryColor, colors.blueColor],
                      )
                    : LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          colors.primaryColor.withAlpha(102),
                          colors.primaryColor.withAlpha(153),
                        ],
                      ),
              ),
              child: SizedBox.expand(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r),
                  ),
                  child: FractionallySizedBox(
                    heightFactor: height.clamp(0.0, 1.0),
                    alignment: Alignment.bottomCenter,
                    child: const SizedBox.expand(),
                  ),
                ),
              ),
            ),
          ),
          Text(
            month,
            style: AppTextStyle.styleBold10.copyWith(
              color: isHighlighted ? colors.primaryColor : colors.greyTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
