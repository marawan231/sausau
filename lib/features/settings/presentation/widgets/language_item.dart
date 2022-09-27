import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';
import 'package:sausau/features/groups/presentation/widgets/custom_divider.dart';

class LanguageItem extends StatelessWidget {
  const LanguageItem({Key? key, required this.text, this.selected = false})
      : super(key: key);
  final String text;
  final bool selected;

  _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(left: 18.w),
      child: Row(
        children: [
          _buildTitleText(),
          const Spacer(),
          selected ? _buildIcon() : Container(),
        ],
      ),
    );
  }

  _buildTitleText() {
    return Text(
      text,
      style: getLightStyle(fontSize: FontSize.s14, color: ColorManager.black),
    );
  }

  _buildIcon() {
    return Icon(
      Icons.check,
      color: ColorManager.primary,
      size: 30,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          SizedBox(height: 10.h),
          const CustomDivider(),
        ],
      ),
    );
  }
}
