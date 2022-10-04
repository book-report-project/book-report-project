import 'package:get/get.dart';

import 'package:book_report_app/app/data/services/app_config/service.dart';
import 'package:book_report_app/app/modules/notification/repository.dart';

class NotificationController extends GetxController with StateMixin {
  final NotificationRepository repository;
  NotificationController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    super.onInit();
  }
}
