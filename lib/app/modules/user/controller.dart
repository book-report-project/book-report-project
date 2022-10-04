import 'package:book_report_app/app/modules/user/repository.dart';
import 'package:get/get.dart';

import 'package:book_report_app/app/data/services/app_config/service.dart';

class UserController extends GetxController with StateMixin {
  final UserRepository repository;
  UserController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    super.onInit();
  }
}
