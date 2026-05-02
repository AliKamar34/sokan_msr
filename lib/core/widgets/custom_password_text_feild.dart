import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/utils/validators.dart';
import 'package:sokan_msr/core/widgets/custom_text_field.dart';

class CustomPasswordTextFeild extends StatefulWidget {
  const CustomPasswordTextFeild({
    super.key,
    required TextEditingController passwordController,
    required this.lable,
    required this.hint,
    this.validator = Validators.validatePassword,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;
  final String lable, hint;
  final String? Function(String?)? validator;
  @override
  State<CustomPasswordTextFeild> createState() =>
      _CustomPasswordTextFeildState();
}

class _CustomPasswordTextFeildState extends State<CustomPasswordTextFeild> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      label: widget.lable,
      hint: widget.hint,
      controller: widget._passwordController,
      keyboardType: TextInputType.visiblePassword,
      validator: widget.validator,
      isPassword: _obscurePassword,
      suffixIcon: InkWell(
        onTap: () {
          setState(() {
            _obscurePassword = !_obscurePassword;
          });
        },
        child: _obscurePassword
            ? SvgPicture.asset(Assets.passwordEye)
            : Icon(
                Icons.visibility_off_outlined,
                color: Theme.of(context).extension<AppColors>()!.greyTextColor,
              ),
      ),
    );
  }
}
