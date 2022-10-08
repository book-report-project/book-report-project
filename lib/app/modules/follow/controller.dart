import 'package:get/get.dart';

import 'package:book_report_app/app/data/services/app_config/service.dart';
import 'package:book_report_app/app/modules/follow/repository.dart';

class FollowController extends GetxController with StateMixin {
  final FollowRepository repository;
  FollowController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    super.onInit();
  }
}
