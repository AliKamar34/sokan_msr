import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/core/routing/app_routes.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/features/start/services/on_boarding_services.dart';

class OnBordingHeaderWidget extends StatelessWidget {
  const OnBordingHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 45.w,
              height: 45.w,
              decoration: BoxDecoration(
                color: Theme.of(context).extension<AppColors>()!.primaryColor,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Center(child: SvgPicture.asset(Assets.splashLogo)),
            ),
            SizedBox(width: 8.w),
            Text('Sokan Misr', style: AppTextStyle.styleBold18),
          ],
        ),
        TextButton(
          onPressed: () {
            OnBoardingServices.setOnBoardingViewed();
            context.pushReplacementNamed(AppRoutes.loginRoute);
          },
          child: Text(
            'Skip',
            style: AppTextStyle.styleSemiBold18.copyWith(
              color: Theme.of(context).extension<AppColors>()!.greyTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
