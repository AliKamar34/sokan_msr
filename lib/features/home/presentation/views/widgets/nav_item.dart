import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/features/home/data/models/bottom_nav_item_model.dart';

class NavItem extends StatelessWidget {
  final BottomNavItemModel item;
  final bool isActive;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.item,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Column(
          spacing: 4.h,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              item.icon,
              width: 24.w,
              height: 20.h,
              colorFilter: ColorFilter.mode(
                isActive ? colors.blueColor : colors.greyTextColor,
                BlendMode.srcIn,
              ),
            ),
            Text(
              item.label,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: isActive ? colors.blueColor : colors.greyTextColor,
                letterSpacing: isActive ? 0 : 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
