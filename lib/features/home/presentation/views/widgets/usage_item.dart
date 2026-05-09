import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

class UsageItem extends StatelessWidget {
  final String label;
  final String value;
  final String unit;
  final String icon;

  const UsageItem({
    super.key,
    required this.label,
    required this.value,
    required this.unit,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return Row(
      spacing: 12.w,
      children: [
        SvgPicture.asset(icon),
        Column(
          spacing: 2.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label.toUpperCase(),
              style: AppTextStyle.styleRegular10.copyWith(
                color: colors.whiteColor.withAlpha(153),
                letterSpacing: 1,
              ),
            ),
            Row(
              spacing: 4.w,
              children: [
                Text(
                  value,
                  style: AppTextStyle.styleBold18.copyWith(
                    color: colors.whiteColor,
                  ),
                ),
                Text(
                  unit,
                  style: AppTextStyle.styleRegular10.copyWith(
                    color: colors.whiteColor.withAlpha(179),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
