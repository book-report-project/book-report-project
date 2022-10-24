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
    return this;
  }

  changeDarkMode(_) async {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
  }
}
