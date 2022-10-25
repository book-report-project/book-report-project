import 'package:get/get.dart';

import 'package:book_report_app/app/data/provider/api.dart';
import 'package:book_report_app/app/modules/pages/feed/controller.dart';
import 'package:book_report_app/app/modules/pages/feed/repository.dart';

class FeedBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FeedController>(() => FeedController(FeedRepository(MyApi())));
  }
}
