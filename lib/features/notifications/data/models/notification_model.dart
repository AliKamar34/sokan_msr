import 'package:flutter/material.dart';

enum NotificationType {
  billAlert,
  maintenanceUpdate,
  community,
  securityNotice,
  other,
}

class NotificationItem {
  final String id;
  final String title;
  final String description;
  final NotificationType type;
  final String timeAgo;
  final String? actionButtonText;
  final VoidCallback? onActionTap;
  final bool isRead;

  NotificationItem({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.timeAgo,
    this.actionButtonText,
    this.onActionTap,
    this.isRead = false,
  });
}

class NotificationCategory {
  final String title;
  final List<NotificationItem> notifications;

  NotificationCategory({required this.title, required this.notifications});
}
