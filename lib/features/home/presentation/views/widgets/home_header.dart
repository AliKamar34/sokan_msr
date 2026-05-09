import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_container.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/notification_button.dart';

class HomeHeader extends StatelessWidget {
  final String userName;
  final String userAvatarUrl;
  final VoidCallback onNotificationTap;
  final int notificationCount;

  const HomeHeader({
    super.key,
    required this.userName,
    required this.userAvatarUrl,
    required this.onNotificationTap,
    this.notificationCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: Row(
        spacing: 16.w,
        children: [
          CustomContainer(
            padding: 8.w,
            height: 45.h,
            borderColor: colors.primaryColor,
            child: SvgPicture.asset(Assets.profile),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back,',
                  style: AppTextStyle.styleMedium12.copyWith(
                    color: colors.greyTextColor,
                    letterSpacing: 0.6,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  userName,
                  style: AppTextStyle.styleBold20.copyWith(
                    color: colors.primaryColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          NotificationButton(
            onTap: onNotificationTap,
            notificationCount: notificationCount,
          ),
        ],
      ),
    );
  }
}
