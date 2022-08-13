import 'package:book_report_app/screens/screens.dart';
import 'package:book_report_app/style/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        // themeMode: ThemeMode.dark,
        themeMode: ThemeMode.light,
        title: '독후감 앱 (가칭)',
        home: const HomeScreen());
  }
}
