import 'package:get/get.dart';

import 'package:book_report_app/app/data/provider/api.dart';
import 'package:book_report_app/app/modules/notification/controller.dart';
import 'package:book_report_app/app/modules/notification/repository.dart';

class NotificationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(
        () => NotificationController(NotificationRepository(MyApi())));
  }
}
