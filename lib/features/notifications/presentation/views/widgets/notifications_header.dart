import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_arrow_back_widget.dart';

class NotificationsHeader extends StatelessWidget {
  const NotificationsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    return Row(
      spacing: 16.w,
      children: [
        CustomArrowBackWidget(),
        Text(
          'Notifications',
          style: AppTextStyle.styleBold20.copyWith(
            color: colors.blackTextColor,
          ),
        ),
        Spacer(),
        InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('All notifications marked as read')),
            );
          },
          child: Center(
            child: Text(
              'Mark all as read',
              style: AppTextStyle.styleSemiBold14.copyWith(
                color: colors.greyTextColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
