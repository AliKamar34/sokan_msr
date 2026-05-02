import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/features/auth/presentation/views/widgets/reset_password_form.dart';
import 'package:sokan_msr/features/auth/presentation/views/widgets/reset_password_header.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 48.h,
            children: [
              ResetPasswordHeader(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  spacing: 24.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Secure your\nsanctuary.',
                      style: AppTextStyle.styleBold30,
                    ),
                    Text(
                      'Create a new password that combines\nstrength with ease of memory.',
                      style: AppTextStyle.styleRegular16,
                    ),
                    ResetPasswordForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
