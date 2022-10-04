import 'package:get/get.dart';

import 'package:book_report_app/app/data/provider/api.dart';
import 'package:book_report_app/app/modules/chat/controller.dart';
import 'package:book_report_app/app/modules/chat/repository.dart';

class ChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(() => ChatController(ChatRepository(MyApi())));
  }
}
