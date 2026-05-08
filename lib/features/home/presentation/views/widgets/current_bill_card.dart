import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_button.dart';
import 'package:sokan_msr/core/widgets/custom_container.dart';
import 'package:sokan_msr/features/home/data/models/consumption_model.dart';

class CurrentBillCard extends StatelessWidget {
  final BillModel bill;
  final VoidCallback onPayNowTap;

  const CurrentBillCard({
    super.key,
    required this.bill,
    required this.onPayNowTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return CustomContainer(
      padding: 24.w,
      child: Column(
        spacing: 16.h,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 8.w,
                children: [
                  SvgPicture.asset(Assets.bill),
                  Text(
                    'Current Bill',
                    style: AppTextStyle.styleBold16.copyWith(
                      color: colors.blackTextColor,
                    ),
                  ),
                ],
              ),
              Text(
                'Due in ${bill.daysUntilDue} days',
                style: AppTextStyle.styleMedium12.copyWith(
                  color: colors.greyTextColor,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  spacing: 8.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 8.w,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          bill.currency,
                          style: AppTextStyle.styleBold18.copyWith(
                            color: colors.primaryColor,
                          ),
                        ),
                        Text(
                          bill.amount,
                          style: AppTextStyle.styleBold30.copyWith(
                            color: colors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Billing Period: ${bill.billingPeriod}',
                      style: AppTextStyle.styleRegular14.copyWith(
                        color: colors.greyTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              // Pay Now Button
              Expanded(
                flex: 3,
                child: CustomButton(title: 'Pay Now', onPressed: onPayNowTap),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
