import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';

class GlassActionButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;

  const GlassActionButton({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return ClipRRect(
      borderRadius: BorderRadius.circular(24.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: Container(
          width: 64.h,
          height: 64.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            color: colors.whiteColor.withAlpha(150),
            border: Border.all(color: colors.whiteColor.withAlpha(77)),
            boxShadow: [
              BoxShadow(
                color: colors.blackTextColor.withAlpha(20),
                blurRadius: 50,
                offset: const Offset(0, 25),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(24.r),
              onTap: onTap,
              child: Center(child: Icon(icon, size: 28.sp)),
            ),
          ),
        ),
      ),
    );
  }
}
