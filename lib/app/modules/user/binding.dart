import 'package:get/get.dart';

import 'package:book_report_app/app/data/provider/api.dart';
import 'package:book_report_app/app/modules/user/controller.dart';
import 'package:book_report_app/app/modules/user/repository.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController(UserRepository(MyApi())));
  }
}
