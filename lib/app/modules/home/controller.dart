import 'package:get/get.dart';

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
    // darkMode.value = config!.darkMode();
    super.onInit();
  }
  // logout() async {
  //   await config!.changeIsLogged(false);
  //   await Get.offAllNamed(Routes.LOGIN);
  // }

  //  getCats() async {
  //   final _ = await repository.getCats();
  //   if (verifyresponse(_)) {
  //     change(_, status: RxStatus.error(_.message));
  //     return Get.snackbar('Erro', _.message);
  //   } else {
  //     change(_, status: RxStatus.success());
  //   }
  // }
}
