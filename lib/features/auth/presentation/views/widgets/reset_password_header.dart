import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/core/widgets/custom_arrow_back_widget.dart';

class ResetPasswordHeader extends StatelessWidget {
  const ResetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        children: [
          CustomArrowBackWidget(),
          SizedBox(width: 12.w),
          Text(
            'Sokan Misr',
            style: AppTextStyle.styleBold18.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).extension<AppColors>()!.blackTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
