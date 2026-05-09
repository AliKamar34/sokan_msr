import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/features/home/data/models/consumption_model.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/consumption_analysis_card.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/current_bill_card.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/home_header.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/quick_actions_section.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/usage_summary_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<UsageSummaryItem> usageItems = [
      UsageSummaryItem(
        label: 'Electricity',
        value: '120',
        unit: 'kWh',
        iconUrl: Assets.electricity,
      ),
      UsageSummaryItem(
        label: 'Water',
        value: '50',
        unit: 'm³',
        iconUrl: Assets.water,
      ),
      UsageSummaryItem(
        label: 'Gas',
        value: '20',
        unit: 'm³',
        iconUrl: Assets.gas,
      ),
    ];

    List<MonthlyConsumption> consumptionHistory = [
      MonthlyConsumption(month: 'Jan', electricity: 150, water: 60, height: .8),
      MonthlyConsumption(month: 'Feb', electricity: 130, water: 55, height: .7),
      MonthlyConsumption(
        month: 'Mar',
        electricity: 120,
        water: 50,
        height: .6,
        isHighlighted: true,
      ),
      MonthlyConsumption(month: 'Apr', electricity: 110, water: 45, height: .5),
      MonthlyConsumption(month: 'May', electricity: 100, water: 40, height: .4),
      MonthlyConsumption(month: 'Jun', electricity: 90, water: 35, height: .3),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeHeader(
            userName: 'Ali Kamar',
            userAvatarUrl: 'fake avatar url',
            onNotificationTap: () {},
            notificationCount: 1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              spacing: 24.h,
              children: [
                UsageSummaryCard(
                  usageItems: usageItems,
                  onViewDetailsTap: () {},
                ),
                CurrentBillCard(
                  bill: BillModel(
                    amount: ' 100.0',
                    currency: 'EGP',
                    billingPeriod: 'Monthly',
                    dueDate: DateTime.now().toString(),
                    daysUntilDue: 5,
                  ),
                  onPayNowTap: () {},
                ),
                ConsumptionAnalysisCard(
                  title: '6-Month Analysis',
                  percentageChange: '-15 %',
                  consumptionHistory: consumptionHistory,
                ),
                QuickActionsSection(),
                SizedBox(height: 65.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
