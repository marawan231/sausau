// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/assets_manager.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    this.height,
    this.widht,
  }) : super(key: key);
  final double? height;
  final double? widht;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 115.h,
      width: widht ?? 115.w,
      child: Image.asset(
        ImageAssets.splashLogo,
      ),
    );
  }
}
