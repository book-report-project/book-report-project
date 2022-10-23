import 'package:get/get.dart';

import 'package:book_report_app/app/modules/detail/repository.dart';
import 'package:book_report_app/core/utils/verify_response.dart';

class DetailController extends GetxController with StateMixin {
  final DetailRepository repository;
  DetailController(this.repository);

  @override
  void onInit() {
    super.onInit();
  }

  getFeeds() async {
    final _ = await repository.getFeeds();
    if (verifyresponse(_)) {
      change(_, status: RxStatus.error(_.message));
      return Get.snackbar('Erro', _.message);
    } else {
      change(_, status: RxStatus.success());
    }
  }
}
