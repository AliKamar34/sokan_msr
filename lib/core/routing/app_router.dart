import 'package:go_router/go_router.dart';
import 'package:sokan_msr/core/routing/app_routes.dart';
import 'package:sokan_msr/features/start/presentation/views/on_boarding_view.dart';
import '../../features/start/presentation/views/splash_view.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splashRoute,
    routes: [
      GoRoute(
        path: AppRoutes.splashRoute,
        name: AppRoutes.splashRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoutes.onboardingRoute,
        name: AppRoutes.onboardingRoute,
        builder: (context, state) => const OnBoardingView(),
      ),
      // GoRoute(
      //   path: AppRoutes.loginRoute,
      //   name: AppRoutes.loginRoute,
      //   builder: (context, state) => const LoginView(),
      // ),
      // GoRoute(
      //   path: AppRoutes.signupRoute,
      //   name: AppRoutes.signupRoute,
      //   builder: (context, state) => const SignUpView(),
      // ),
      // GoRoute(
      //   path: AppRoutes.verifyRoute,
      //   name: AppRoutes.verifyRoute,
      //   builder: (context, state) => const VerifyView(),
      // ),
      // GoRoute(
      //   path: AppRoutes.resetPasswordRoute,
      //   name: AppRoutes.resetPasswordRoute,
      //   builder: (context, state) => const ResetPasswordView(),
      // ),
      // GoRoute(
      //   path: AppRoutes.privacyPolicyRoute,
      //   name: AppRoutes.privacyPolicyRoute,
      //   builder: (context, state) => const PrivacyPolicyView(),
      // ),
      // GoRoute(
      //   path: AppRoutes.termsOfServiceRoute,
      //   name: AppRoutes.termsOfServiceRoute,
      //   builder: (context, state) => const TermsOfServiceView(),
      // ),
    ],
  );
}
