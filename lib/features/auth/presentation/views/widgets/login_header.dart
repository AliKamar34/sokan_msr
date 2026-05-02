import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/constants/app_constants.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppConstants.welcomeMessage, style: AppTextStyle.styleBold36),
        Text(AppConstants.signInSubtitle, style: AppTextStyle.styleRegular16),
      ],
    );
  }
}
