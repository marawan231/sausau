// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/route_manager.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../../../../core/resources/values_manager.dart';

class AvatarSection extends StatelessWidget {
  const AvatarSection({Key? key}) : super(key: key);

  _buildAvatarSection(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildAvatar(),
        SizedBox(width: 15.w),
        _buildUserName(),
        const Spacer(),
        _buildEditPart(context),
      ],
    );
  }

  _buildAvatar() {
    return Container(
      height: 70.h,
      width: 70.w,
      child: Image.asset(ImageAssets.avatar),
    );
  }

  _buildUserName() {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Text(
        'Kevin Zegers',
        style: getMediumStyle(
          fontSize: FontSize.s18,
          color: ColorManager.black,
        ),
      ),
    );
  }

  _buildEditPart(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: Row(
        children: [
          _buildEditText(),
          SizedBox(width: 7.w),
          _buildEditIcon(context),
        ],
      ),
    );
  }

  _buildEditText() {
    return Text(
      'Edit',
      style: getRegularStyle(fontSize: FontSize.s10, color: ColorManager.black),
    );
  }

  _buildEditIcon(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.editProfileRoute);
      },
      child: Container(
        height: 30.h,
        width: 30.w,
        child: CircleAvatar(
          backgroundColor: ColorManager.secondary,
          child: Icon(
            Icons.edit_outlined,
            size: AppSize.s15,
            color: ColorManager.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAvatarSection(context);
  }
}
