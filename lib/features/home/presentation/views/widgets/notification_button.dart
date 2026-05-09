import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/widgets/custom_container.dart';

class NotificationButton extends StatelessWidget {
  final VoidCallback onTap;
  final int notificationCount;

  const NotificationButton({
    super.key,
    required this.onTap,
    required this.notificationCount,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          CustomContainer(
            padding: 8.w,
            child: SvgPicture.asset(Assets.notification),
          ),
          Positioned(
            top: 8.h,
            right: 8.w,
            child: Container(
              width: 8.w,
              height: 8.w,
              decoration: BoxDecoration(
                color: colors.redColor,
                borderRadius: BorderRadius.circular(9999),
                border: Border.all(color: colors.whiteColor, width: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
