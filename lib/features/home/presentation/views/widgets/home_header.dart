import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
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

    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        // backdropFilter:  ui.ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Row(
          children: [
            // Avatar Section
            Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                border: Border.all(color: colors.primaryColor, width: 2),
                borderRadius: BorderRadius.circular(9999),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9999),
                child: Image.network(
                  userAvatarUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: colors.inputBackgroundColor,
                      child: Icon(Icons.person, color: colors.primaryColor),
                    );
                  },
                ),
              ),
            ),
            SizedBox(width: 16.w),
            // Text Section
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
            // Notification Button
            NotificationButton(
              onTap: onNotificationTap,
              notificationCount: notificationCount,
            ),
          ],
        ),
      ),
    );
  }
}
