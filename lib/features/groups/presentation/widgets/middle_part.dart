import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';

class MiddlePart extends StatelessWidget {
  const MiddlePart({Key? key}) : super(key: key);

  _buildGroupInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildId(),
        SizedBox(height: 10.h),
        _buildNumberOfMembers(),
        SizedBox(height: 12.h),
        _buildTarget()
      ],
    );
  }

  _buildId() {
    return Text(
      'ID: 04558',
      style:
          getSemiBoldStyle(fontSize: FontSize.s14, color: ColorManager.black),
    );
  }

  _buildNumberOfMembers() {
    return Text(
      'Members  :  06',
      style:
          getSemiBoldStyle(fontSize: FontSize.s10, color: ColorManager.black),
    );
  }

  _buildTarget() {
    return Text(
      'Target         :   \$550.00',
      style:
          getSemiBoldStyle(fontSize: FontSize.s10, color: ColorManager.black),
    );
  }

  _buildDate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildStartDate(),
        SizedBox(height: 12.h),
        _buildEndDate(),
      ],
    );
  }

  _buildStartDate() {
    return Text(
      'Start    :        07-07-2022',
      style:
          getSemiBoldStyle(fontSize: FontSize.s10, color: ColorManager.black),
    );
  }

  _buildEndDate() {
    return Text(
      'End       :        07-08-2022',
      style:
          getSemiBoldStyle(fontSize: FontSize.s10, color: ColorManager.black),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 17.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildGroupInfo(),
          _buildDate(),
        ],
      ),
    );
  }
}
