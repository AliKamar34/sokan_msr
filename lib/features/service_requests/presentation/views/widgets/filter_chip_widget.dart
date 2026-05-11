import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_container.dart';

class FilterChipWidget extends StatelessWidget {
  const FilterChipWidget({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return GestureDetector(
      onTap: onTap,
      child: CustomContainer(
        padding: 8.w,
        borderRadius: 16.r,
        backgroundColor: isSelected ? colors.primaryColor : colors.whiteColor,
        child: Text(
          label,
          style: AppTextStyle.styleBold20.copyWith(
            color: isSelected ? colors.whiteColor : colors.greyTextColor,
          ),
        ),
      ),
    );
  }
}
