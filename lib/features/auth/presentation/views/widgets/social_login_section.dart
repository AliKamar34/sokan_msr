import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/core/constants/app_constants.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/widgets/custom_button.dart';
import 'package:sokan_msr/core/widgets/divider_with_text.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 40.h,
      children: [
        DividerWithText(text: AppConstants.orContinueWithText),
        CustomButton(
          icon: SvgPicture.asset(Assets.google),
          title: AppConstants.googleButtonText,
          onPressed: () {},
          borderColor: Theme.of(context).extension<AppColors>()!.blackTextColor,
          backgroundColor: Theme.of(context).extension<AppColors>()!.whiteColor,
        ),
      ],
    );
  }
}
