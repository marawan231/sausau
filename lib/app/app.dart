// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/resources/route_manager.dart';
import '../core/resources/theme_manager.dart';

class MyApp extends StatelessWidget {
  MyApp._internal();

  static final MyApp _instance = MyApp._internal(); // single instance

  factory MyApp() => _instance; // factory to get single instance

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashRoute,
        theme: getApplicationTheme(),
      ),
    );
  }
}
