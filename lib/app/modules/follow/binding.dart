import 'package:get/get.dart';

import 'package:book_report_app/app/data/provider/api.dart';
import 'package:book_report_app/app/modules/follow/controller.dart';
import 'package:book_report_app/app/modules/follow/repository.dart';

class FollowBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FollowController>(
        () => FollowController(FollowRepository(MyApi())));
  }
}
