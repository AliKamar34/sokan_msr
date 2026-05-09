import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/features/notifications/data/models/notification_model.dart';
import 'package:sokan_msr/features/notifications/presentation/views/widgets/notification_card.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({
    super.key,
    required this.title,
    required this.notifications,
  });

  final String title;
  final List<NotificationItem> notifications;

  String _getIconPathForType(NotificationType type) {
    switch (type) {
      case NotificationType.billAlert:
        return Assets.notification;
      case NotificationType.maintenanceUpdate:
        return Assets.report;
      case NotificationType.community:
        return Assets.profile;
      case NotificationType.securityNotice:
        return Assets.security;
      default:
        return Assets.notification;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.styleBold12.copyWith(
            color: colors.greyTextColor,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: 16.h),
        ...notifications.map((notification) {
          final iconPath = _getIconPathForType(notification.type);
          return NotificationCard(
            notification: notification,
            iconPath: iconPath,
          );
        }),
      ],
    );
  }
}
