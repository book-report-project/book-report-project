import 'package:get/get.dart';

import 'package:book_report_app/app/data/services/app_config/service.dart';
import 'package:book_report_app/app/modules/chat/repository.dart';

class ChatController extends GetxController with StateMixin {
  final ChatRepository repository;
  ChatController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    super.onInit();
  }
}
