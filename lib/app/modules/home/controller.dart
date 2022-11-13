import 'package:get/get.dart';

import 'package:book_report_app/core/utils/verify_response.dart';
import 'package:book_report_app/app/data/services/app_config/service.dart';
import 'package:book_report_app/app/modules/home/repository.dart';

class HomeController extends GetxController with StateMixin {
  final HomeRepository repository;
  HomeController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    getFeed();
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
