// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';
import 'package:sausau/core/resources/values_manager.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key, required this.color}) : super(key: key);
  final Color color;

  _buildBackgroundContainer() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Container(
        width: double.infinity,
        height: 78.h,
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.dividerColor, width: .5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s10.r)),
          color: color,
        ),
        child: _buildNotificationContent(),
      ),
    );
  }

  _buildNotificationContent() {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, left: 15.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildOnlineCircle(),
          SizedBox(width: 13.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle(),
              SizedBox(height: 8.h),
              _buildDate(),
            ],
          ),
        ],
      ),
    );
  }

  _buildOnlineCircle() {
    return Container(
      width: 10.w,
      height: 10.h,
      child: CircleAvatar(
        backgroundColor: ColorManager.primary,
      ),
    );
  }

  _buildTitle() {
    return Container(
      child: Text(
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\nsed diam nonumy eirmod tempor invidunt ut',
        maxLines: 2,
        // overflow: TextOverflow.ellipsis,
        style: getLightStyle(fontSize: FontSize.s10, color: ColorManager.black),
      ),
    );
  }

  _buildDate() {
    return Text(
      '09:49 AM',
      style: getLightStyle(fontSize: FontSize.s10, color: ColorManager.black),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBackgroundContainer();
  }
}
