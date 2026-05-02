import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).extension<AppColors>()!.primaryColor,
        title: Text('Privacy Policy DEMO', style: AppTextStyle.styleBold24),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Text(
          'Privacy policy details will be provided by the legal team.\n\n'
          'This screen is a placeholder for the privacy policy text, including data handling, user rights, cookies, and terms.',
          style: AppTextStyle.styleRegular16,
        ),
      ),
    );
  }
}
