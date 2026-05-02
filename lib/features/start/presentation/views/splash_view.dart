import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sokan_msr/core/routing/app_routes.dart';
import 'package:sokan_msr/core/themes/app_colors.dart';
import 'package:sokan_msr/core/themes/app_text_style.dart';
import 'package:sokan_msr/features/start/presentation/views/widgets/build_decorative_background.dart';
import 'package:sokan_msr/features/start/services/on_boarding_services.dart';
import '../../../../core/constants/app_assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin();
  }

  void _navigateToLogin() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        bool hasViewed = OnBoardingServices.isOnBoardingViewed();
        if (hasViewed) {
          context.pushReplacementNamed(AppRoutes.loginRoute);
        } else {
          context.pushReplacementNamed(AppRoutes.onboardingRoute);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).extension<AppColors>()!.primaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          BuildDecorativeBackground(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(child: SvgPicture.asset(Assets.splashLogo)),
                Text('Sokan Misr', style: AppTextStyle.styleBold36),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
