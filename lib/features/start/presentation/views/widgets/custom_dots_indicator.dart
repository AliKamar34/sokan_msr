import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.position,
    required this.dotsCount,
  });
  final double position;
  final int dotsCount;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      animate: true,
      animationDuration: const Duration(milliseconds: 300),
      dotsCount: dotsCount,
      position: position,
      decorator: DotsDecorator(
        activeColor: Theme.of(context).extension<AppColors>()!.primaryColor,
        size: const Size(25, 9),
        activeSize: const Size(25, 9),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }
}
