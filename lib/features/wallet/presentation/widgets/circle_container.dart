import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer(
      {Key? key,
      this.size ,
      this.borderColor = const Color(0xff00B050),
      required this.imagePath})
      : super(key: key);

  final double? size;
  final Color borderColor;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 30.h,
      width: size ?? 30.w,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: .8,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: CircleAvatar(
        backgroundColor: ColorManager.transparent,
        child: Image.asset(imagePath),
      ),
    );
  }
}
