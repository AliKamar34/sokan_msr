import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

class TermsAndPrivacyCheckboxWidget extends StatefulWidget {
  const TermsAndPrivacyCheckboxWidget({super.key});

  @override
  State<TermsAndPrivacyCheckboxWidget> createState() =>
      _TermsAndPrivacyCheckboxWidgetState();
}

class _TermsAndPrivacyCheckboxWidgetState
    extends State<TermsAndPrivacyCheckboxWidget> {
  bool _agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _agreeToTerms,
          onChanged: (value) {
            setState(() {
              _agreeToTerms = value ?? false;
            });
          },
          activeColor: Theme.of(context).extension<AppColors>()!.primaryColor,
          side: BorderSide(
            color: Theme.of(context).extension<AppColors>()!.inputBorderColor,
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: AppTextStyle.styleRegular14.copyWith(
                color: Theme.of(context).extension<AppColors>()!.blackTextColor,
              ),
              children: [
                const TextSpan(text: 'I agree to the '),
                TextSpan(
                  text: 'Terms of Service',
                  style: AppTextStyle.styleRegular14,
                ),
                const TextSpan(text: ' and '),
                TextSpan(
                  text: 'Privacy Policy',
                  style: AppTextStyle.styleRegular14,
                ),
                const TextSpan(text: '.'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
