import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_container.dart';
import 'package:sokan_msr/features/service_requests/data/models/service_request_model.dart';

class ServiceRequestCardHeaderWidget extends StatelessWidget {
  const ServiceRequestCardHeaderWidget({
    super.key,
    required this.request,
    required this.colors,
  });

  final ServiceRequest request;
  final AppColors colors;
  Color _getStatusColor(ServiceRequestStatus status) {
    switch (status) {
      case ServiceRequestStatus.pending:
        return const Color(0xFFFFA500);
      case ServiceRequestStatus.inProgress:
        return const Color(0xFF2196F3);
      case ServiceRequestStatus.completed:
        return const Color(0xFF4CAF50);
      case ServiceRequestStatus.cancelled:
        return const Color(0xFFEF4444);
    }
  }

  Color _getStatusBackgroundColor(ServiceRequestStatus status) {
    switch (status) {
      case ServiceRequestStatus.pending:
        return const Color(0xFFFFA500).withAlpha(26);
      case ServiceRequestStatus.inProgress:
        return const Color(0xFF2196F3).withAlpha(26);
      case ServiceRequestStatus.completed:
        return const Color(0xFF4CAF50).withAlpha(26);
      case ServiceRequestStatus.cancelled:
        return const Color(0xFFEF4444).withAlpha(26);
    }
  }

  String _getStatusLabel(ServiceRequestStatus status) {
    switch (status) {
      case ServiceRequestStatus.pending:
        return 'Pending';
      case ServiceRequestStatus.inProgress:
        return 'In Progress';
      case ServiceRequestStatus.completed:
        return 'Completed';
      case ServiceRequestStatus.cancelled:
        return 'Cancelled';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            spacing: 4.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                request.title,
                style: AppTextStyle.styleBold16.copyWith(
                  color: colors.blackTextColor,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                request.category,
                style: AppTextStyle.styleRegular12.copyWith(
                  color: colors.greyTextColor,
                ),
              ),
            ],
          ),
        ),
        CustomContainer(
          padding: 8.w,
          borderRadius: 16.r,
          borderColor: _getStatusBackgroundColor(request.status),
          backgroundColor: _getStatusBackgroundColor(request.status),
          child: Text(
            _getStatusLabel(request.status),
            style: AppTextStyle.styleBold12.copyWith(
              color: _getStatusColor(request.status),
            ),
          ),
        ),
      ],
    );
  }
}
