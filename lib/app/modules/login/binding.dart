import 'package:get/get.dart';

import 'package:book_report_app/app/data/provider/api.dart';
import 'package:book_report_app/app/modules/login/controller.dart';
import 'package:book_report_app/app/modules/login/repository.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
        () => LoginController(LoginRepository(MyApi())));
  }
}
