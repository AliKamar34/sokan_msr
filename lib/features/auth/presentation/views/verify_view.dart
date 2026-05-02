import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_arrow_back_widget.dart';
import 'package:sokan_msr/features/auth/presentation/views/widgets/otp_input_field.dart';
// import 'package:go_router/go_router.dart';
// import 'package:sokan_msr/core/routing/app_routes.dart';

class VerifyView extends StatefulWidget {
  const VerifyView({super.key});

  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  // // String _otp = '';
  // bool _isLoading = false;

  // void _handleVerify() {
  //   // if (_otp.length == 6) {
  //   setState(() => _isLoading = true);

  //   Future.delayed(const Duration(seconds: 2), () {
  //     if (mounted) {
  //       setState(() => _isLoading = false);
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(content: Text('Verification successful')),
  //       );
  //       context.go(AppRoutes.resetPasswordRoute);
  //     }
  //   });
  //   // } else {
  //   //   ScaffoldMessenger.of(context).showSnackBar(
  //   //     const SnackBar(content: Text('Please enter all 6 digits')),
  //   //   );
  //   // }
  // }

  // void _handleResend() {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(content: Text('Code resent to your mobile number')),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          spacing: 48.h,
          crossAxisAlignment: .start,
          children: [
            CustomArrowBackWidget(),
            Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Verify', style: AppTextStyle.styleBold36),
                Text(
                  'Enter the verification code we just sent on your email address.',
                  style: AppTextStyle.styleRegular16,
                ),
              ],
            ),
            Expanded(child: OTPInputField()),
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(
                  text: 'Didn’t received code? ',
                  style: AppTextStyle.styleSemiBold14.copyWith(
                    color: Theme.of(
                      context,
                    ).extension<AppColors>()!.primaryColor,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: 'Resend',
                      style: AppTextStyle.styleSemiBold14.copyWith(
                        color: Theme.of(
                          context,
                        ).extension<AppColors>()!.blackTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
