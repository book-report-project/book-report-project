import 'package:get/get.dart';

import 'package:book_report_app/app/modules/pages/feed/repository.dart';
import 'package:book_report_app/app/data/services/app_config/service.dart';
import 'package:book_report_app/core/utils/verify_response.dart';

class FeedController extends GetxController with StateMixin {
  final FeedRepository repository;
  FeedController(this.repository);
  AppConfigService? config;
  final darkMode = false.obs;

  @override
  void onInit() {
    config = Get.find<AppConfigService>();
    getFeed();
    super.onInit();
  }

  getFeed() async {
    final _ = await repository.getFeeds();
    if (verifyresponse(_)) {
      change(_, status: RxStatus.error(_.message));
      return Get.snackbar('Erro', _.message);
    } else {
      change(_, status: RxStatus.success());
    }
  }
}
