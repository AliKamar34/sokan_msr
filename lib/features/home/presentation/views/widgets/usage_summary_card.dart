import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_button.dart';
import 'package:sokan_msr/core/widgets/custom_gradient_container.dart';
import 'package:sokan_msr/features/home/data/models/consumption_model.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/usage_item.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/usage_summary_blur_container.dart';

class UsageSummaryCard extends StatelessWidget {
  final List<UsageSummaryItem> usageItems;
  final VoidCallback onViewDetailsTap;

  const UsageSummaryCard({
    super.key,

    required this.onViewDetailsTap,
    required this.usageItems,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return CustomGradientContainer(
      child: Stack(
        children: [
          UsageSummaryBlurContainer(colors: colors),
          Column(
            spacing: 32.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                spacing: 4.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Usage Summary',
                    style: AppTextStyle.styleSemiBold18.copyWith(
                      color: colors.whiteColor.withAlpha(230),
                    ),
                  ),
                  Text(
                    'Monthly utility performance',
                    style: AppTextStyle.styleRegular14.copyWith(
                      color: colors.whiteColor.withAlpha(179),
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 16.w,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      spacing: 16.h,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (var item in usageItems)
                          UsageItem(
                            label: item.label,
                            value: item.value,
                            unit: item.unit,
                            icon: item.iconUrl,
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      title: 'View Details',
                      onPressed: onViewDetailsTap,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
