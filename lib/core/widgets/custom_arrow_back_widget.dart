import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/widgets/custom_container.dart';

class CustomArrowBackWidget extends StatelessWidget {
  const CustomArrowBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: CustomContainer(
        padding: 8.w,
        borderColor: Theme.of(context).extension<AppColors>()!.whiteColor,
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Theme.of(context).extension<AppColors>()!.blackTextColor,
          size: 24.sp,
        ),
      ),
    );
  }
}
