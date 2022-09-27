import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app/app.dart';

void main() async{
    await ScreenUtil.ensureScreenSize();

  // initGetIt();
  runApp(MyApp());
}
