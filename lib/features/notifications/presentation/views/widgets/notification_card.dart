import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_button.dart';
import 'package:sokan_msr/core/widgets/custom_container.dart';
import 'package:sokan_msr/features/notifications/data/models/notification_model.dart';

class NotificationCard extends StatelessWidget {
  final NotificationItem notification;
  final String iconPath;

  const NotificationCard({
    super.key,
    required this.notification,
    required this.iconPath,
  });

  Color _getIconBackgroundColor(NotificationType type) {
    switch (type) {
      case NotificationType.billAlert:
        return const Color(0xFFE0F7FF);
      case NotificationType.maintenanceUpdate:
        return const Color(0xFFFFF3E0);
      case NotificationType.community:
        return const Color(0xFFE8F5E9);
      case NotificationType.securityNotice:
        return const Color(0xFFFFEBEE);
      default:
        return const Color(0xFFF5F5F5);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return CustomContainer(
      marginBottom: 8.h,
      padding: 16.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 16.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainer(
                padding: 8.w,
                backgroundColor: _getIconBackgroundColor(notification.type),
                borderColor: _getIconBackgroundColor(notification.type),
                child: SvgPicture.asset(
                  iconPath,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(
                      Icons.notifications_outlined,
                      size: 24.sp,
                      color: colors.primaryColor,
                    );
                  },
                ),
              ),
              Expanded(
                child: Column(
                  spacing: 8.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            notification.title,
                            style: AppTextStyle.styleBold16.copyWith(
                              color: colors.blackTextColor,
                            ),
                          ),
                        ),
                        Text(
                          notification.timeAgo,
                          style: AppTextStyle.styleRegular12.copyWith(
                            color: colors.greyTextColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      notification.description,
                      style: AppTextStyle.styleRegular14.copyWith(
                        color: colors.greyTextColor,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (notification.actionButtonText != null) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 150.w,
                  child: CustomButton(
                    title: notification.actionButtonText!,
                    onPressed: notification.onActionTap,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
