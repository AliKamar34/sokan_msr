import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  final Color? dividerColor;
  final TextStyle? textStyle;

  const DividerWithText({
    super.key,
    required this.text,
    this.dividerColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color:
                dividerColor ??
                Theme.of(context).extension<AppColors>()!.dividerColor,
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Container(
            color: Theme.of(context).extension<AppColors>()!.scaffoldColor,
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            child: Text(
              text,
              style:
                  textStyle ??
                  AppTextStyle.styleMedium14.copyWith(
                    color: Theme.of(
                      context,
                    ).extension<AppColors>()!.greyTextColor,
                  ),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color:
                dividerColor ??
                Theme.of(context).extension<AppColors>()!.dividerColor,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
