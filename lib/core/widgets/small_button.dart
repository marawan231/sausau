import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/values_manager.dart';

class SmallButton extends StatelessWidget {
  const SmallButton(
      {Key? key,
      this.width,
      this.height,
      required this.text,
      required this.onTap})
      : super(key: key);
  final double? width;
  final double? height;
  final String text;
  final void Function()? onTap;

  _buildButtonText(BuildContext context) {
    return Center(
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: ColorManager.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? 66.w,
        height: height ?? 35.h,
        decoration: BoxDecoration(
            color: ColorManager.primary,
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s6.r))),
        child: _buildButtonText(context),
      ),
    );
  }
}
