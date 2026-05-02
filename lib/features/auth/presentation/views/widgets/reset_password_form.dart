import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sokan_msr/core/routing/app_routes.dart';
import 'package:sokan_msr/core/utils/validators.dart';
import 'package:sokan_msr/core/widgets/custom_button.dart';
import 'package:sokan_msr/core/widgets/custom_container.dart';
import 'package:sokan_msr/core/widgets/custom_password_text_feild.dart';
import 'password_strength_indicator.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  late TextEditingController _passwordController;
  late TextEditingController _confirmPasswordController;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _handleSubmit(String password, String confirmPassword) {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Password updated successfully')),
        );
        context.pushReplacementNamed(AppRoutes.loginRoute);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 48.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomContainer(
          child: Form(
            key: _formKey,
            child: Column(
              spacing: 20.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomPasswordTextFeild(
                  lable: 'New Password',
                  hint: '••••••••',
                  passwordController: _passwordController,
                ),
                PasswordStrengthIndicator(password: _passwordController.text),
                CustomPasswordTextFeild(
                  passwordController: _confirmPasswordController,
                  lable: 'Confirm Password',
                  hint: '••••••••',
                  validator: (value) => Validators.validateConfirmPassword(
                    value,
                    _passwordController.text,
                  ),
                ),
              ],
            ),
          ),
        ),
        CustomButton(
          title: 'Update Password',
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _handleSubmit(
                _passwordController.text,
                _confirmPasswordController.text,
              );
              _formKey.currentState!.save();
            } else {
              setState(() {
                autovalidateMode = AutovalidateMode.always;
              });
            }
          },
        ),
      ],
    );
  }
}
