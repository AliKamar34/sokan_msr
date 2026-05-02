import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sokan_msr/core/constants/app_constants.dart';
import 'package:sokan_msr/core/routing/app_routes.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/features/auth/presentation/views/widgets/login_form.dart';
import 'package:sokan_msr/features/auth/presentation/views/widgets/login_header.dart';
import 'package:sokan_msr/features/auth/presentation/views/widgets/privacy_policy_and_terms_services_text.dart';
import 'package:sokan_msr/features/auth/presentation/views/widgets/social_login_section.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const .symmetric(vertical: 16, horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            spacing: 40.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeader(),
              LoginForm(),
              SocialLoginSection(),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: AppConstants.noAccountText,
                    style: AppTextStyle.styleRegular16.copyWith(
                      color: Theme.of(
                        context,
                      ).extension<AppColors>()!.greyTextColor,
                    ),
                    children: [
                      TextSpan(
                        text: AppConstants.signUpLinkText,
                        style: AppTextStyle.styleRegular16.copyWith(
                          color: Theme.of(
                            context,
                          ).extension<AppColors>()!.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.pushReplacementNamed(AppRoutes.signupRoute);
                          },
                      ),
                    ],
                  ),
                ),
              ),
              PrivacyPolicyAndTermsServicesText(),
            ],
          ),
        ),
      ),
    );
  }
}
