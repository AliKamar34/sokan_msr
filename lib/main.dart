import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sokan_msr/core/helpers/shared_prefs_helper.dart';
import 'package:sokan_msr/core/themes/theme_controller.dart';
import 'package:sokan_msr/core/themes/theme_data.dart';
import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefsHelper.init();
  await ScreenUtil.ensureScreenSize();
  runApp(const SokanApp());
}

class SokanApp extends StatelessWidget {
  const SokanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),
          themeMode: ThemeController.instance.isDark
              ? ThemeMode.dark
              : ThemeMode.light,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
