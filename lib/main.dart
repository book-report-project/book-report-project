import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:book_report_app/screens/screens.dart';
import 'package:book_report_app/style/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        // themeMode: ThemeMode.light,
        title: '독후감 앱 (가칭)',
        // initialRoute: RouteConstant.homeScreen,
        home: const HomeScreen());
  }
}
