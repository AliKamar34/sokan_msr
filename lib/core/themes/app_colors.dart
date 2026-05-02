import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color primaryColor;
  final Color primaryLightColor;

  final Color blackTextColor;
  final Color greyTextColor;
  final Color textTertiary;

  final Color whiteColor;
  final Color scaffoldColor;

  final Color inputBorderColor;
  final Color inputBackgroundColor;
  final Color inputHintColor;

  final Color redColor;
  final Color successColor;
  final Color warningColor;

  final Color blueColor;
  final Color labelTextColor;
  final Color dividerColor;
  final Color shadowColor;
  final Color borderColor;
  final Color orangeColor;

  const AppColors({
    required this.primaryColor,
    required this.primaryLightColor,
    required this.blackTextColor,
    required this.greyTextColor,
    required this.textTertiary,
    required this.whiteColor,
    required this.scaffoldColor,
    required this.inputBorderColor,
    required this.inputBackgroundColor,
    required this.inputHintColor,
    required this.redColor,
    required this.successColor,
    required this.warningColor,
    required this.blueColor,
    required this.labelTextColor,
    required this.dividerColor,
    required this.shadowColor,
    required this.borderColor,
    required this.orangeColor,
  });

  @override
  AppColors copyWith({
    Color? primaryColor,
    Color? primaryLightColor,
    Color? blackTextColor,
    Color? greyTextColor,
    Color? textTertiary,
    Color? whiteColor,
    Color? scaffoldColor,
    Color? inputBorderColor,
    Color? inputBackgroundColor,
    Color? inputHintColor,
    Color? redColor,
    Color? successColor,
    Color? warningColor,
    Color? blueColor,
    Color? labelTextColor,
    Color? dividerColor,
    Color? shadowColor,
    Color? borderColor,
    Color? orangeColor,
  }) {
    return AppColors(
      primaryColor: primaryColor ?? this.primaryColor,
      primaryLightColor: primaryLightColor ?? this.primaryLightColor,
      blackTextColor: blackTextColor ?? this.blackTextColor,
      greyTextColor: greyTextColor ?? this.greyTextColor,
      textTertiary: textTertiary ?? this.textTertiary,
      whiteColor: whiteColor ?? this.whiteColor,
      scaffoldColor: scaffoldColor ?? this.scaffoldColor,
      inputBorderColor: inputBorderColor ?? this.inputBorderColor,
      inputBackgroundColor: inputBackgroundColor ?? this.inputBackgroundColor,
      inputHintColor: inputHintColor ?? this.inputHintColor,
      redColor: redColor ?? this.redColor,
      successColor: successColor ?? this.successColor,
      warningColor: warningColor ?? this.warningColor,
      blueColor: blueColor ?? this.blueColor,
      labelTextColor: labelTextColor ?? this.labelTextColor,
      dividerColor: dividerColor ?? this.dividerColor,
      shadowColor: shadowColor ?? this.shadowColor,
      borderColor: borderColor ?? this.borderColor,
      orangeColor: orangeColor ?? this.orangeColor,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      primaryLightColor: Color.lerp(
        primaryLightColor,
        other.primaryLightColor,
        t,
      )!,
      blackTextColor: Color.lerp(blackTextColor, other.blackTextColor, t)!,
      greyTextColor: Color.lerp(greyTextColor, other.greyTextColor, t)!,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t)!,
      whiteColor: Color.lerp(whiteColor, other.whiteColor, t)!,
      scaffoldColor: Color.lerp(scaffoldColor, other.scaffoldColor, t)!,
      inputBorderColor: Color.lerp(
        inputBorderColor,
        other.inputBorderColor,
        t,
      )!,
      inputBackgroundColor: Color.lerp(
        inputBackgroundColor,
        other.inputBackgroundColor,
        t,
      )!,
      inputHintColor: Color.lerp(inputHintColor, other.inputHintColor, t)!,
      redColor: Color.lerp(redColor, other.redColor, t)!,
      successColor: Color.lerp(successColor, other.successColor, t)!,
      warningColor: Color.lerp(warningColor, other.warningColor, t)!,
      blueColor: Color.lerp(blueColor, other.blueColor, t)!,
      labelTextColor: Color.lerp(labelTextColor, other.labelTextColor, t)!,
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t)!,
      shadowColor: Color.lerp(shadowColor, other.shadowColor, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      orangeColor: Color.lerp(orangeColor, other.orangeColor, t)!,
    );
  }

  static const light = AppColors(
    primaryColor: Color(0xFF094A58),
    primaryLightColor: Color(0xFF18bde2),

    blackTextColor: Color(0xFF0F172A),
    greyTextColor: Color(0xFF64748B),
    textTertiary: Color(0xFF94A3B8),

    whiteColor: Color(0xFFFFFFFF),
    scaffoldColor: Color(0xFFF6F8F8),

    inputBorderColor: Color(0xFFE2E8F0),
    inputBackgroundColor: Color(0xFFFFFFFF),
    inputHintColor: Color(0xFF6B7280),

    redColor: Color(0xFFEF4444),
    successColor: Color(0xFF10B981),
    warningColor: Color(0xFFFf9E0B),

    blueColor: Color(0xFF18bde2),
    labelTextColor: Color(0xFF334155),
    dividerColor: Color(0xFFE2E8F0),
    shadowColor: Color(0xFF000000),
    borderColor: Color(0xFFE2E8F0),
    orangeColor: Color(0xFFFf9E0B),
  );

  static const dark = AppColors(
    primaryColor: Color(0xFF1AACCC),
    primaryLightColor: Color(0xFF42D4F8),

    blackTextColor: Color(0xFFEAEAEA),
    greyTextColor: Color(0xFF9E9E9E),
    textTertiary: Color(0xFF707070),

    whiteColor: Color(0xFF121212),
    scaffoldColor: Color(0xFF1A1A1A),

    inputBorderColor: Color(0xFF2C2C2C),
    inputBackgroundColor: Color(0xFF242424),
    inputHintColor: Color(0xFF969696),

    redColor: Color(0xFFEF5350),
    successColor: Color(0xFF66BB6A),
    warningColor: Color(0xFFFFCA28),

    blueColor: Color(0xFF42D4F8),
    labelTextColor: Color(0xFFBDBDBD),
    dividerColor: Color(0xFF2C2C2C),
    shadowColor: Color(0xFF000000),
    borderColor: Color(0xFF2C2C2C),
    orangeColor: Color(0xFFFFCA28),
  );
}
