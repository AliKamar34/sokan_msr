import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/widgets/glass_action_button.dart';
import 'package:sokan_msr/features/home/data/models/bottom_nav_item_model.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/nav_item.dart';

class GlassmorphismBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;
  final List<BottomNavItemModel> items;

  const GlassmorphismBottomNav({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return Positioned(
      bottom: 19.h,
      left: 24.w,
      right: 24.w,
      child: Row(
        spacing: 16.w,
        children: [
          Expanded(
            child: Container(
              height: 64.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32.r),
                boxShadow: [
                  BoxShadow(
                    color: colors.blackTextColor.withAlpha(20),
                    blurRadius: 50,
                    offset: const Offset(0, 25),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.r),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                  child: Container(
                    decoration: BoxDecoration(
                      color: colors.whiteColor.withAlpha(150),
                      border: Border.all(
                        color: colors.whiteColor.withAlpha(77),
                      ),
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 39.94.w,
                        vertical: 0,
                      ),
                      child: Row(
                        spacing: 8.w,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          items.length,
                          (index) => NavItem(
                            item: items[index],
                            isActive: currentIndex == index,
                            onTap: () => onItemTapped(index),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          GlassActionButton(
            onTap: () {
              // Handle FAB tap
            },
            icon: Icons.add,
          ),
        ],
      ),
    );
  }
}
