import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/assets_manager.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/route_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem(
      {Key? key, this.title, this.trailing, required this.showArrow})
      : super(key: key);
  final Widget? title;
  final Widget? trailing;
  final bool? showArrow;

  _buildTitle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Wheel ID: 04558',
          style: getSemiBoldStyle(
              fontSize: FontSize.s14, color: ColorManager.black),
        ),
        Text(
          '07 jul 2022',
          style: getMediumStyle(
              fontSize: FontSize.s10, color: ColorManager.black3),
        ),
      ],
    );
  }

  _buildTrailing() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '+\$100.00',
          style: getSemiBoldStyle(
              fontSize: FontSize.s16, color: ColorManager.primary),
        ),
        Text(
          ' Tier status: Earth',
          style: getSemiBoldStyle(
              fontSize: FontSize.s10, color: ColorManager.black3),
        ),
      ],
    );
  }

  _buildArrow() {
    return Icon(
      Icons.keyboard_arrow_right,
      color: ColorManager.dividerColor,
      size: 22.sp,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 17.h),
      child: Container(
        height: 66.h,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: ColorManager.grey5),
            borderRadius: BorderRadius.all(Radius.circular(5.r))),
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, Routes.groupDetailsRoute);
          },
          leading: Padding(
            padding: EdgeInsets.only(bottom: 9.h),
            child: SizedBox(
              height: 48.h,
              width: 48.w,
              child: CircleAvatar(
                  backgroundColor: ColorManager.primary,
                  child: Image.asset(ImageAssets.peopleGroup)),
            ),
          ),
          title: _buildTitle(),
          trailing: showArrow! ? _buildArrow() : _buildTrailing(),
        ),
      ),
    );
  }
}
