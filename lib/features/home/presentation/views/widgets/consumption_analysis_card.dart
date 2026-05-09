import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_container.dart';
import 'package:sokan_msr/features/home/data/models/consumption_model.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/bar_item.dart';

class ConsumptionAnalysisCard extends StatelessWidget {
  final String title;
  final String percentageChange;
  final List<MonthlyConsumption> consumptionHistory;
  final int maxBars;

  const ConsumptionAnalysisCard({
    super.key,
    required this.title,
    required this.percentageChange,
    required this.consumptionHistory,
    this.maxBars = 6,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    final displayItems = consumptionHistory.length > maxBars
        ? consumptionHistory.sublist(consumptionHistory.length - maxBars)
        : consumptionHistory;

    return Column(
      spacing: 16.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyle.styleBold18.copyWith(
                color: colors.blackTextColor,
              ),
            ),
            CustomContainer(
              padding: 4.w,
              backgroundColor: colors.primaryColor.withAlpha(26),
              child: Text(
                percentageChange,
                style: AppTextStyle.styleMedium14.copyWith(
                  color: colors.primaryColor,
                ),
              ),
            ),
          ],
        ),
        CustomContainer(
          padding: 24.w,
          child: SizedBox(
            height: 160.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                displayItems.length,
                (index) => BarItem(
                  month: displayItems[index].month,
                  height: displayItems[index].height,
                  isHighlighted: displayItems[index].isHighlighted,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
