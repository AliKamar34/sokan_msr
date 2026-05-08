import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';

class UsageSummaryBlurContainer extends StatelessWidget {
  const UsageSummaryBlurContainer({super.key, required this.colors});

  final AppColors colors;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32.r),
        child: Container(
          width: 192.w,
          height: 192.w,
          padding: .all(16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colors.blueColor.withAlpha(51),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 32, sigmaY: 32),
            child: SvgPicture.asset(
              Assets.electricity,
              colorFilter: ColorFilter.mode(
                colors.blackTextColor.withAlpha(77),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
