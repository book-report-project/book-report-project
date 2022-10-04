import 'package:get/get.dart';

import 'package:book_report_app/app/data/provider/api.dart';
import 'package:book_report_app/app/modules/reply/controller.dart';
import 'package:book_report_app/app/modules/reply/repository.dart';

class ReplyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReplyController>(
        () => ReplyController(ReplyRepository(MyApi())));
  }
}
