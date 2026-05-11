import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_arrow_back_widget.dart';
import 'package:sokan_msr/features/service_requests/data/models/service_request_model.dart';
import 'package:sokan_msr/features/service_requests/presentation/views/widgets/filter_chips_section.dart';
import 'package:sokan_msr/features/service_requests/presentation/views/widgets/service_request_card.dart';

class ServiceRequestsView extends StatelessWidget {
  const ServiceRequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final serviceRequests = [
      ServiceRequest(
        id: 'SR-001',
        title: 'Plumbing Issue',
        description:
            'Water leakage from bathroom ceiling requires immediate attention.',
        status: ServiceRequestStatus.inProgress,
        category: 'Plumbing',
        createdDate: '2024-04-28',
        expectedCompletionDate: '2024-04-30',
        technician: 'Ahmed Mohamed',
        technicianPhone: '+20 100 123 4567',
        location: 'Building A, Unit 12',
        priority: 0.8,
      ),
      ServiceRequest(
        id: 'SR-002',
        title: 'Electrical Maintenance',
        description:
            'Scheduled electrical inspection and maintenance for the unit.',
        status: ServiceRequestStatus.pending,
        category: 'Electrical',
        createdDate: '2024-04-27',
        expectedCompletionDate: '2024-05-02',
        technician: 'Pending Assignment',
        location: 'Building B, Unit 8',
        priority: 0.5,
      ),
      ServiceRequest(
        id: 'SR-003',
        title: 'AC Installation',
        description:
            'Installation of new air conditioning unit in living room.',
        status: ServiceRequestStatus.completed,
        category: 'HVAC',
        createdDate: '2024-04-15',
        technician: 'Karim Farah',
        location: 'Building A, Unit 5',
        priority: 0.3,
      ),
    ];

    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 24.h),
        child: SingleChildScrollView(
          child: Column(
            spacing: 24.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 16.w,
                children: [
                  CustomArrowBackWidget(),
                  Text(
                    'Service Requests',
                    style: AppTextStyle.styleBold20.copyWith(
                      color: colors.blackTextColor,
                    ),
                  ),
                ],
              ),
              FilterChipsSection(),
              Text(
                '${serviceRequests.length} Active Requests',
                style: AppTextStyle.styleBold16.copyWith(
                  color: colors.blackTextColor,
                ),
              ),
              ...serviceRequests.map((request) {
                return ServiceRequestCard(request: request);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
