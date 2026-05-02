import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sokan_msr/core/constants/app_constants.dart';
import 'package:sokan_msr/core/routing/app_routes.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/utils/validators.dart';
import 'package:sokan_msr/core/widgets/custom_button.dart';
import 'package:sokan_msr/core/widgets/custom_password_text_feild.dart';
import 'package:sokan_msr/core/widgets/custom_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 20.h,
        crossAxisAlignment: .end,
        children: [
          CustomTextField(
            label: AppConstants.emailLabel,
            hint: AppConstants.emailHint,
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            validator: Validators.validateEmail,
          ),
          CustomPasswordTextFeild(
            lable: AppConstants.passwordLabel,
            hint: AppConstants.passwordHint,
            passwordController: _passwordController,
          ),
          InkWell(
            onTap: () {
              context.push(AppRoutes.verifyRoute);
            },
            child: Text(
              AppConstants.forgotPasswordText,
              style: AppTextStyle.styleBold14.copyWith(
                color: Theme.of(context).extension<AppColors>()!.primaryColor,
              ),
            ),
          ),
          CustomButton(
            title: AppConstants.signInButtonText,
            onPressed: () {
              context.push(AppRoutes.homeRoute);
            },
          ),
        ],
      ),
    );
  }
}
