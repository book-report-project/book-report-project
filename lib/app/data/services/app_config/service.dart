import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:book_report_app/app/data/services/app_config/repository.dart';
import 'package:book_report_app/app/data/provider/api.dart';

class AppConfigService extends GetxService {
  late AppConfigRepository repository;
  late GetStorage box;
  Future<AppConfigService> init() async {
    repository = AppConfigRepository(MyApi());
    box = GetStorage();
    // await box.writeIfNull(IS_LOGGED, false);
    return this;
  }

  // darkMode() => box.read(DARK_MODE);
  // isLogged() => box.read(IS_LOGGED);
  // useremail() => box.read(USER_EMAIL);

  changeDarkMode(_) async {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
    // await box.write(DARK_MODE, _);
  }

  // changeIsLogged(_) async => box.write(IS_LOGGED, _);
  // changeUserEmail(_) async => box.write(USER_EMAIL, _);
}
