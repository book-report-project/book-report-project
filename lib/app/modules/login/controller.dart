import 'package:get/get.dart';

import 'package:book_report_app/app/modules/login/repository.dart';
import 'package:book_report_app/app/data/services/app_config/service.dart';

class LoginController extends GetxController with StateMixin {
  final LoginRepository repository;
  LoginController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    super.onInit();
  }
}
