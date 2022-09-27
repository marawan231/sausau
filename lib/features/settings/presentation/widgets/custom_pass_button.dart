import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';

class CustomPassButton extends StatelessWidget {
  const CustomPassButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        // color: ColorManager.white,
        border: Border.all(
          color: ColorManager.dividerColor,
          width: 1.5.sp,
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorManager.white,
        ),
        // style: Theme.of(context).elevatedButtonTheme.style,
        onPressed: onPressed,
        child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
