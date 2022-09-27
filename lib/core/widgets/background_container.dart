import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({Key? key, this.elevation, this.height})
      : super(key: key);
  final double? elevation;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      width: double.infinity,
      height: height ?? 146.h,
      child: Card(
        elevation: elevation ?? 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s12.r))),
        margin: EdgeInsets.zero,
        color: ColorManager.secondary,
      ),
    );
  }
}
