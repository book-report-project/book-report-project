import 'package:get/get.dart';

import 'package:book_report_app/app/data/provider/api.dart';
import 'package:book_report_app/app/modules/detail/controller.dart';
import 'package:book_report_app/app/modules/detail/repository.dart';

class DetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(
        () => DetailController(DetailRepository(MyApi())));
  }
}
