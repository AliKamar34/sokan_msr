import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sokan_msr/core/constants/app_constants.dart';
import 'package:sokan_msr/core/routing/app_routes.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

class PrivacyPolicyAndTermsServicesText extends StatelessWidget {
  const PrivacyPolicyAndTermsServicesText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 3.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => context.push(AppRoutes.privacyPolicyRoute),
          child: Text(
            AppConstants.privacyPolicyText,
            style: AppTextStyle.styleRegular12,
          ),
        ),
        Container(
          width: 1,
          height: 2.h,
          color: Theme.of(context).extension<AppColors>()!.dividerColor,
        ),
        GestureDetector(
          onTap: () => context.push(AppRoutes.termsOfServiceRoute),
          child: Text(
            AppConstants.termsOfServiceText,
            style: AppTextStyle.styleRegular12,
          ),
        ),
        Container(
          width: 1,
          height: 2.h,
          color: Theme.of(context).extension<AppColors>()!.dividerColor,
        ),
      ],
    );
  }
}
