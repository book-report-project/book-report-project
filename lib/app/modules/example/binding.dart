import 'package:get/get.dart';

import 'package:book_report_app/app/data/provider/api.dart';
import 'package:book_report_app/app/modules/example/controller.dart';
import 'package:book_report_app/app/modules/example/repository.dart';

class AnimalDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimalDetailsController>(
        () => AnimalDetailsController(AnimalDetailsRepository(MyApi())));
  }
}
