import 'package:get/get.dart';

import 'package:book_report_app/app/modules/home/binding.dart';
import 'package:book_report_app/app/modules/home/page.dart';
import 'package:book_report_app/app/modules/detail/binding.dart';
import 'package:book_report_app/app/modules/detail/page.dart';
import 'package:book_report_app/app/modules/notification/binding.dart';
import 'package:book_report_app/app/modules/notification/page.dart';
import 'package:book_report_app/app/modules/chat_list/binding.dart';
import 'package:book_report_app/app/modules/chat_list/page.dart';
import 'package:book_report_app/app/modules/reply/binding.dart';
import 'package:book_report_app/app/modules/reply/page.dart';
import 'package:book_report_app/app/modules/user/binding.dart';
import 'package:book_report_app/app/modules/user/page.dart';
import 'package:book_report_app/app/modules/follow/binding.dart';
import 'package:book_report_app/app/modules/follow/page.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.home,
        page: () => const HomeScreen(),
        bindings: [HomeBinding()]),
    GetPage(
        name: Routes.detail,
        page: () => const DetailScreen(),
        bindings: [DetailBinding()]),
    GetPage(
        name: Routes.notification,
        page: () => const NotificationScreen(),
        bindings: [NotificationBinding()]),
    GetPage(
        name: Routes.chatList,
        page: () => const ChatListScreen(),
        bindings: [ChatListBinding()]),
    GetPage(
        name: Routes.reply,
        page: () => const ReplyScreen(),
        bindings: [ReplyBinding()]),
    GetPage(
        name: Routes.user,
        page: () => const UserScreen(),
        bindings: [UserBinding()]),
    GetPage(
      name: Routes.user,
      page: () => const FollowScreen(),
      bindings: [FollowBinding()],
    ),
  ];
}
