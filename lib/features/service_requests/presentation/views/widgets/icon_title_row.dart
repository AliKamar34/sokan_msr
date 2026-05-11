import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

class IconTitleRow extends StatelessWidget {
  const IconTitleRow({
    super.key,
    required this.colors,
    required this.title,
    required this.icon,
    this.trailing,
  });

  final AppColors colors;
  final String title;
  final IconData icon;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4.w,
      children: [
        Icon(icon, size: 16.sp, color: colors.greyTextColor),
        Expanded(
          child: Text(
            title,
            style: AppTextStyle.styleRegular12.copyWith(
              color: colors.greyTextColor,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (trailing != null) ...[SizedBox(width: 8.w), trailing!],
      ],
    );
  }
}
