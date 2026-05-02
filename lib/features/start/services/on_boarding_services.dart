import 'package:sokan_msr/core/constants/app_constants.dart';
import 'package:sokan_msr/core/helpers/shared_prefs_helper.dart';

class OnBoardingServices {
  static bool isOnBoardingViewed() {
    return SharedPrefsHelper.getBool(AppConstants.onBoardingViewed) ?? false;
  }

  static Future setOnBoardingViewed() async {
    await SharedPrefsHelper.setBool(AppConstants.onBoardingViewed, true);
  }
}
