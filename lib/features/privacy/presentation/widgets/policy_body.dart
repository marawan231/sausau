// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/style_manager.dart';

class PolicyBody extends StatelessWidget {
  const PolicyBody({Key? key, required this.text}) : super(key: key);
  final String text;

  _buildBody() {
    return Padding(
      padding:
          EdgeInsets.only(top: 30.h, bottom: 30.h, right: 20.w, left: 20.w),
      child: Container(
        child: Stack(
          children: [
            _buildWaterMark(),
            Text(
              text,
              style: getLightStyle(
                fontSize: FontSize.s14,
                color: ColorManager.opacityBlack,
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildWaterMark() {
    return Center(
      child: Container(
          height: 174.33.h,
          width: 180.3.w,
          child: Image.asset(ImageAssets.watermark)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }
}
