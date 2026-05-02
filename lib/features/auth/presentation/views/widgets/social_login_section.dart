import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/core/constants/app_constants.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_button.dart';
import 'package:sokan_msr/core/widgets/divider_with_text.dart';

class SocialLoginSection extends StatelessWidget {
  final VoidCallback? onSignUpPressed;

  const SocialLoginSection({super.key, this.onSignUpPressed});

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
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: AppConstants.noAccountText,
            style: AppTextStyle.styleRegular16.copyWith(
              color: Theme.of(context).extension<AppColors>()!.greyTextColor,
            ),
            children: [
              TextSpan(
                text: AppConstants.signUpLinkText,
                style: AppTextStyle.styleRegular16.copyWith(
                  color: Theme.of(context).extension<AppColors>()!.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: onSignUpPressed != null
                    ? (TapGestureRecognizer()..onTap = onSignUpPressed)
                    : null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
