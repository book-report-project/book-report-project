import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:book_report_app/datas/constants/route_constant.dart';
import 'package:book_report_app/screens/screens.dart';
import 'package:book_report_app/binding/bindings.dart';

List<GetPage> getPages = [
  GetPage(
      name: RouteConstant.homeScreen,
      page: () => const HomeScreen(),
      middlewares: [
        // Add here
        // AuthGuard(),
      ],
      binding: HomeScreenBinding()),
];
