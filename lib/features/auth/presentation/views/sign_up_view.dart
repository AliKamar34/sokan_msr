import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sokan_msr/core/routing/app_routes.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/features/auth/presentation/views/widgets/creat_account_text_header_widget.dart';
import 'package:sokan_msr/features/auth/presentation/views/widgets/sign_up_form.dart';
import 'package:sokan_msr/features/auth/presentation/views/widgets/social_login_section.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            spacing: 24.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Sign Up',
                  style: AppTextStyle.styleBold24.copyWith(
                    color: Theme.of(
                      context,
                    ).extension<AppColors>()!.primaryColor,
                  ),
                ),
              ),
              const CreatAccountTextHeaderWidget(),
              const SignUpForm(),
              const SocialLoginSection(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: AppTextStyle.styleRegular14.copyWith(
                        color: Theme.of(
                          context,
                        ).extension<AppColors>()!.greyTextColor,
                      ),
                      children: [
                        const TextSpan(text: 'Already have an account? '),
                        TextSpan(
                          text: 'Log In',
                          style: AppTextStyle.styleRegular14.copyWith(
                            color: Theme.of(
                              context,
                            ).extension<AppColors>()!.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.pushReplacementNamed(
                                AppRoutes.loginRoute,
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
