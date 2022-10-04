import 'package:get/get.dart';

import 'package:book_report_app/app/modules/controller.dart';
import 'package:book_report_app/app/modules/repository.dart';
import 'package:book_report_app/app/data/provider/api.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(HomeRepository(MyApi())));
  }
}
