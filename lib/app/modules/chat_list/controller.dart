import 'package:get/get.dart';

import 'package:book_report_app/app/data/services/app_config/service.dart';
import 'package:book_report_app/app/modules/chat_list/repository.dart';
import 'package:book_report_app/core/utils/verify_response.dart';

class ChatListController extends GetxController with StateMixin {
  final ChatListRepository repository;
  ChatListController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    super.onInit();
  }

  getFeed() async {
    final response = await repository.getFeeds();
    if (verifyresponse(response)) {
      change(response, status: RxStatus.error(response.message));
      return Get.snackbar('Erro', response.message);
    } else {
      change(response, status: RxStatus.success());
    }
  }
}
