import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

class DateInfoColumn extends StatelessWidget {
  const DateInfoColumn({
    super.key,
    required this.colors,
    required this.date,
    required this.title,
  });

  final AppColors colors;
  final String date;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.styleRegular12.copyWith(
            color: colors.greyTextColor,
          ),
        ),
        Text(
          date,
          style: AppTextStyle.styleBold12.copyWith(
            color: colors.blackTextColor,
          ),
        ),
      ],
    );
  }
}
