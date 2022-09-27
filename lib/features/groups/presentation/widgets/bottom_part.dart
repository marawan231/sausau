import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: Text(
        'Enrolled members : 20',
        style: getSemiBoldStyle(
          fontSize: FontSize.s14,
          color: ColorManager.black,
        ),
      ),
    );
  }
}
