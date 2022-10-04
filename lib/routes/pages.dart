import 'package:get/get.dart';

import 'package:book_report_app/app/modules/binding.dart';
import 'package:book_report_app/app/modules/home/page.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.home,
        page: () => const HomeScreen(),
        bindings: [HomeBinding()]),
  ];
}
