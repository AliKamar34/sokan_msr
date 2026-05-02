import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/features/start/models/on_boarding_model.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.count,
    required this.onBoardingModel,
    this.controller,
    this.onPageChanged,
  });
  final int count;
  final OnBoardingModel onBoardingModel;
  final PageController? controller;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: count,
      controller: controller,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SvgPicture.asset(onBoardingModel.image),
            Text(
              onBoardingModel.title,
              textAlign: TextAlign.center,
              style: AppTextStyle.styleBold30,
            ),
            SizedBox(height: 16.h),
            Text(
              onBoardingModel.subTitle,
              textAlign: TextAlign.center,
              style: AppTextStyle.styleRegular14,
            ),
          ],
        );
      },
    );
  }
}
