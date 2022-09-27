import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164.w,
      height: 150.h,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.primary,
            width: .5.w,
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s12.r)),
          boxShadow: [
            BoxShadow(
              color: ColorManager.primary,
              blurRadius: 2.0.r,
            ),
          ]),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s12.r)),
        ),
        margin: EdgeInsets.zero,
        color: ColorManager.white,
        child: child,
      ),
    );
  }
}
