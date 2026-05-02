import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildDecorativeBackground extends StatelessWidget {
  const BuildDecorativeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -80.h,
          left: -80.w,
          child: Container(
            width: 320.w,
            height: 320.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF18BDE2).withAlpha(26),
            ),
          ),
        ),
        Positioned(
          bottom: -80.h,
          right: -80.w,
          child: Container(
            width: 320.w,
            height: 320.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFF18BDE2).withAlpha(26),
            ),
          ),
        ),
      ],
    );
  }
}
