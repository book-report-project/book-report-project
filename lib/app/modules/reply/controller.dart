import 'package:book_report_app/app/modules/reply/repository.dart';
import 'package:get/get.dart';

import 'package:book_report_app/app/data/services/app_config/service.dart';

class ReplyController extends GetxController with StateMixin {
  final ReplyRepository repository;
  ReplyController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    super.onInit();
  }
}
