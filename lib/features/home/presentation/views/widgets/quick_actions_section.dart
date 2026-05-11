import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/core/routing/app_routes.dart';
import 'package:sokan_msr/features/home/presentation/views/widgets/quick_action_item.dart';

class QuickActionsSection extends StatelessWidget {
  const QuickActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16.w,
      children: [
        QuickActionItem(
          title: 'Report Issue',
          subtitle: 'Report a problem',
          icon: Assets.report,
          onTap: () {},
        ),
        QuickActionItem(
          title: 'Service Requests',
          subtitle: 'Maintenance in progress',
          icon: Assets.services,
          onTap: () {
            context.pushNamed(AppRoutes.serviceRequestsRoute);
          },
        ),
      ],
    );
  }
}
