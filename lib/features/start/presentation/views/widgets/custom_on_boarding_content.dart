import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sokan_msr/core/constants/app_assets.dart';
import 'package:sokan_msr/core/routing/app_routes.dart';
import 'package:sokan_msr/core/widgets/custom_button.dart';
import 'package:sokan_msr/features/start/models/on_boarding_model.dart';
import 'package:sokan_msr/features/start/presentation/views/widgets/custom_dots_indicator.dart';
import 'package:sokan_msr/features/start/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:sokan_msr/features/start/services/on_boarding_services.dart';

class CustomOnBoardingContent extends StatefulWidget {
  const CustomOnBoardingContent({super.key});

  @override
  State<CustomOnBoardingContent> createState() => _CustomOnBoardingContent();
}

class _CustomOnBoardingContent extends State<CustomOnBoardingContent> {
  int currentIndex = 0;
  final PageController pageController = PageController();
  final List<OnBoardingModel> items = [
    OnBoardingModel(
      image: Assets.onboarding1,
      title: 'Monitor Your Consumption',
      subTitle:
          'Keep track of your water and electricity usage in real-time with our advanced 3D analytics dashboard.',
    ),
    OnBoardingModel(
      image: Assets.onboarding2,

      title: 'Save Water & Energy',
      subTitle:
          'Get personalized recommendations and smart insights to reduce your consumption and save on utility bills.',
    ),
    OnBoardingModel(
      image: Assets.onboarding1,
      title: 'Smart Management',
      subTitle:
          'Control your home utilities from anywhere with our IoT-enabled smart device integration and mobile app.',
    ),
  ];
  void _goToNextPage() {
    if (currentIndex < items.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      if (mounted) {
        context.pushReplacementNamed(AppRoutes.loginRoute);
        OnBoardingServices.setOnBoardingViewed();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            count: 3,
            onBoardingModel: items[currentIndex],
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        CustomDotsIndicator(position: currentIndex.toDouble(), dotsCount: 3),
        SizedBox(height: 24.h),
        CustomButton(
          title: currentIndex == items.length - 1 ? 'Get Started' : 'Continue',
          onPressed: _goToNextPage,
        ),
      ],
    );
  }
}
