import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

class CreatAccountTextHeaderWidget extends StatelessWidget {
  const CreatAccountTextHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Create Account', style: AppTextStyle.styleBold36),
        Text(
          'Fill in your details to get started with Sakan Misr.',
          style: AppTextStyle.styleRegular16,
        ),
      ],
    );
  }
}
