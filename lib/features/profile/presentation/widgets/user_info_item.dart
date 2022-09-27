import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';

class UserInfoItem extends StatelessWidget {
  const UserInfoItem({Key? key, required this.title, required this.data})
      : super(key: key);
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w, top: 10.h, bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: getRegularStyle(
                fontSize: FontSize.s14, color: ColorManager.black),
          ),
          Text(
            data,
            style: getLightStyle(
                fontSize: FontSize.s14, color: ColorManager.opacityBlack),
          ),
        ],
      ),
    );
  }
}
