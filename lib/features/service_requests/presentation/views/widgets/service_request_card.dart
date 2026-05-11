import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_container.dart';
import 'package:sokan_msr/features/service_requests/data/models/service_request_model.dart';
import 'package:sokan_msr/features/service_requests/presentation/views/widgets/date_info_column.dart';
import 'package:sokan_msr/features/service_requests/presentation/views/widgets/icon_title_row.dart';
import 'package:sokan_msr/features/service_requests/presentation/views/widgets/service_request_card_header_widget.dart';

class ServiceRequestCard extends StatelessWidget {
  final ServiceRequest request;

  const ServiceRequestCard({super.key, required this.request});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return CustomContainer(
      padding: 16.w,
      child: Column(
        spacing: 16.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ServiceRequestCardHeaderWidget(request: request, colors: colors),
          Text(
            request.description,
            style: AppTextStyle.styleRegular12.copyWith(
              color: colors.greyTextColor,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          IconTitleRow(
            colors: colors,
            title: request.title,
            icon: Icons.location_on_outlined,
          ),
          IconTitleRow(
            colors: colors,
            title: request.technician,
            icon: Icons.person_outline,
            trailing: request.technicianPhone != null
                ? Icon(
                    Icons.phone_outlined,
                    size: 14.sp,
                    color: colors.primaryColor,
                  )
                : null,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DateInfoColumn(
                colors: colors,
                date: request.createdDate,
                title: 'Created',
              ),
              if (request.expectedCompletionDate != null)
                DateInfoColumn(
                  colors: colors,
                  date: request.expectedCompletionDate!,
                  title: 'Expected',
                )
              else
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(8.r),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    child: Text(
                      'View Details',
                      style: AppTextStyle.styleBold12.copyWith(
                        color: colors.primaryColor,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
