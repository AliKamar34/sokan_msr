import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/features/notifications/data/models/notification_model.dart';
import 'package:sokan_msr/features/notifications/presentation/views/widgets/notification_section.dart';
import 'package:sokan_msr/features/notifications/presentation/views/widgets/notifications_header.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    final todayNotifications = [
      NotificationItem(
        id: '1',
        title: 'Bill Alert',
        description:
            'Your October electricity bill is ready.\nAmount: EGP 1,245.50.',
        type: NotificationType.billAlert,
        timeAgo: '2m ago',
        actionButtonText: 'Pay Now',
        onActionTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Payment feature coming soon')),
          );
        },
      ),
      NotificationItem(
        id: '2',
        title: 'Maintenance Update',
        description:
            'Service Request #SR-102: Plumber is on the way to your unit.',
        type: NotificationType.maintenanceUpdate,
        timeAgo: '1h ago',
      ),
    ];

    final earlierNotifications = [
      NotificationItem(
        id: '3',
        title: 'Community',
        description:
            'New post in Community Feed: Upcoming garden maintenance schedule for Phase 2.',
        type: NotificationType.community,
        timeAgo: 'Yesterday',
      ),
      NotificationItem(
        id: '4',
        title: 'Security Notice',
        description:
            'Guest gate access pass for \'Mohamed Ahmed\' has expired.',
        type: NotificationType.securityNotice,
        timeAgo: '2d ago',
      ),
    ];

    return Scaffold(
      body: SafeArea(
        minimum: .symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            spacing: 32.h,
            children: [
              NotificationsHeader(),
              NotificationSection(
                title: 'TODAY',
                notifications: todayNotifications,
              ),
              NotificationSection(
                title: 'EARLIER',
                notifications: earlierNotifications,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
