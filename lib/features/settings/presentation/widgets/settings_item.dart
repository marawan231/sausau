import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/constants.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';

class SettingItem extends StatefulWidget {
  const SettingItem(
      {Key? key, required this.image, required this.title, required this.index})
      : super(key: key);

  final String? image;
  final String title;
  final int index;

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  _buildLeadingImage() {
    return SizedBox(
        width: 24.w,
        height: 24.h,
        child: widget.image == '' ? Container() : Image.asset(widget.image!));
  }

  _buildTitle() {
    return Text(
      widget.title,
      style: getLightStyle(fontSize: FontSize.s14, color: ColorManager.black4),
    );
  }

  _buildTrailingSwitch() {
    return SizedBox(
      width: 23.w,
      height: 10.h,
      child: widget.index == 1
          ? Transform.scale(
              scale: .7,
              child: RotatedBox(
                quarterTurns: 90,
                child: Switch(
                  value: true,
                  activeColor: ColorManager.secondary,
                  activeTrackColor: ColorManager.primary,
                  onChanged: (value) {},
                ),
              ),
            )
          : Container(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, settingRoutes[widget.index]);
      },
      child: Row(
        children: [
          _buildLeadingImage(),
          SizedBox(width: 12.w),
          _buildTitle(),
          const Spacer(),
          _buildTrailingSwitch(),
        ],
      ),
    );
  }
}
