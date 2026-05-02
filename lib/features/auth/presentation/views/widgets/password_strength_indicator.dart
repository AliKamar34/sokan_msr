import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

enum PasswordStrength { empty, weak, medium, strong }

class PasswordStrengthIndicator extends StatelessWidget {
  final String password;

  const PasswordStrengthIndicator({super.key, required this.password});

  PasswordStrength _calculateStrength() {
    if (password.isEmpty) return PasswordStrength.empty;

    int score = 0;
    if (password.length >= 8) score++;
    if (password.length >= 12) score++;
    if (RegExp(r'[A-Z]').hasMatch(password)) score++;
    if (RegExp(r'[0-9]').hasMatch(password)) score++;
    if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) score++;

    if (score <= 2) return PasswordStrength.weak;
    if (score <= 3) return PasswordStrength.medium;
    return PasswordStrength.strong;
  }

  @override
  Widget build(BuildContext context) {
    final strength = _calculateStrength();
    final strengthText = strength.name.toUpperCase();
    final barCount = strength == PasswordStrength.empty
        ? 0
        : strength == PasswordStrength.weak
        ? 1
        : strength == PasswordStrength.medium
        ? 2
        : 3;
    final barColor = strength == PasswordStrength.empty
        ? const Color(0xFFE5E7EB)
        : strength == PasswordStrength.weak
        ? const Color(0xFFFF6B6B)
        : strength == PasswordStrength.medium
        ? const Color(0xFFFFA500)
        : const Color(0xFF10B981);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ...List.generate(
              3,
              (index) => Expanded(
                child: Container(
                  height: 4.h,
                  margin: EdgeInsets.only(right: index < 2 ? 4.w : 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.r),
                    color: index < barCount
                        ? barColor
                        : const Color(0xFFE5E7EB),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Text(strengthText, style: AppTextStyle.styleSemiBold12),
      ],
    );
  }
}
