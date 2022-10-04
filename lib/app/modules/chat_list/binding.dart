import 'package:get/get.dart';

import 'package:book_report_app/app/data/provider/api.dart';
import 'package:book_report_app/app/modules/chat_list/controller.dart';
import 'package:book_report_app/app/modules/chat_list/repository.dart';

class ChatListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatListController>(
        () => ChatListController(ChatListRepository(MyApi())));
  }
}
