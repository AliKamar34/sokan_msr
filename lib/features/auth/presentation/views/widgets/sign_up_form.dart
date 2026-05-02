import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/utils/validators.dart';
import 'package:sokan_msr/core/widgets/custom_button.dart';
import 'package:sokan_msr/core/widgets/custom_password_text_feild.dart';
import 'package:sokan_msr/core/widgets/custom_text_field.dart';
import 'package:sokan_msr/features/auth/presentation/views/widgets/terms_and_privacy_checkbox_widget.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;
  late final FocusNode _firstNameFocus;
  late final FocusNode _lastNameFocus;
  late final FocusNode _emailFocus;
  late final FocusNode _passwordFocus;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _firstNameFocus = FocusNode();
    _lastNameFocus = FocusNode();
    _emailFocus = FocusNode();
    _passwordFocus = FocusNode();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _firstNameFocus.dispose();
    _lastNameFocus.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 16.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 16.w,
            children: [
              Expanded(
                child: CustomTextField(
                  controller: _firstNameController,
                  label: 'First name',
                  hint: 'e.g. John',
                  keyboardType: TextInputType.name,
                  validator: (v) =>
                      Validators.validateRequired(v, 'First name'),
                  textInputAction: TextInputAction.next,
                  onChanged: (_) {
                    _lastNameFocus.requestFocus();
                  },
                ),
              ),
              Expanded(
                child: CustomTextField(
                  controller: _lastNameController,
                  label: 'Last name',
                  hint: 'e.g. Doe',
                  keyboardType: TextInputType.name,
                  validator: (v) => Validators.validateRequired(v, 'Last name'),
                  textInputAction: TextInputAction.next,
                  onChanged: (_) {
                    _emailFocus.requestFocus();
                  },
                ),
              ),
            ],
          ),
          CustomTextField(
            controller: _emailController,
            label: 'Email',
            hint: 'name@example.com',
            keyboardType: TextInputType.emailAddress,
            validator: Validators.validateEmail,
            textInputAction: TextInputAction.next,
            onChanged: (_) {
              _passwordFocus.requestFocus();
            },
          ),
          CustomPasswordTextFeild(
            passwordController: _passwordController,
            lable: 'Password',
            hint: 'Min. 8 characters',
          ),
          CustomPasswordTextFeild(
            passwordController: _confirmPasswordController,
            lable: 'Confirm Password',
            hint: 'Confirm your password',
          ),
          TermsAndPrivacyCheckboxWidget(),
          CustomButton(
            title: 'Create Account',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
