import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sokan_msr/core/routing/app_routes.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/widgets/custom_button.dart';

class OTPInputField extends StatelessWidget {
  const OTPInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MaterialPinField(
          length: 4,
          mainAxisSize: MainAxisSize.max,
          keyboardType: TextInputType.number,
          theme: MaterialPinTheme(
            spacing: 32.w,
            borderColor: Theme.of(context).extension<AppColors>()!.borderColor,
            fillColor: Theme.of(
              context,
            ).extension<AppColors>()!.inputBorderColor,
            focusedBorderColor: Theme.of(
              context,
            ).extension<AppColors>()!.borderColor,
            focusedFillColor: Theme.of(
              context,
            ).extension<AppColors>()!.inputBorderColor,
            completeFillColor: Theme.of(
              context,
            ).extension<AppColors>()!.whiteColor,
            completeBorderColor: Theme.of(
              context,
            ).extension<AppColors>()!.primaryLightColor,
            errorBorderColor: Theme.of(
              context,
            ).extension<AppColors>()!.redColor,
            shape: MaterialPinShape.outlined,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        CustomButton(
          title: 'Verify',
          onPressed: () {
            context.pushNamed(AppRoutes.resetPasswordRoute);
          },
        ),
      ],
    );
  }
}
