import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

class TermsOfServiceView extends StatelessWidget {
  const TermsOfServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).extension<AppColors>()!.primaryColor,
        title: Text(
          'Terms of Service DEMO',
          style: AppTextStyle.styleBold24.copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Text(
          'Terms of service will be inserted here.\n\n'
          'This screen is a placeholder for terms such as usage rules, acceptable conduct, privacy compliance, and legal disclaimers.',
          style: AppTextStyle.styleRegular16,
        ),
      ),
    );
  }
}
