import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

import 'package:book_report_app/core/theme/theme.dart';
import 'package:book_report_app/routes/pages.dart';
import 'package:book_report_app/app/modules/login/binding.dart';
import 'package:book_report_app/app/data/services/app_config/service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Get.putAsync(() => AppConfigService().init());

  runApp(GetMaterialApp(
    initialBinding: LoginBinding(),
    initialRoute: Routes.login,
    getPages: AppPages.pages,
    theme: AppTheme.light(),
    darkTheme: AppTheme.dark(),
    themeMode: ThemeMode.light,
    debugShowCheckedModeBanner: false,
  ));
}
