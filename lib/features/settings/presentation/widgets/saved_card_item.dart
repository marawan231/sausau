// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';

class SavedCard extends StatelessWidget {
  const SavedCard({Key? key, required this.cardImage, required this.cardNumber})
      : super(key: key);
  final String cardImage;
  final String cardNumber;

  _buildBackgroundContainer() {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
          color: ColorManager.transparent,
          border: Border.all(color: ColorManager.grey2, width: 1.sp),
          borderRadius: BorderRadius.all(Radius.circular(3.r))),
      child: _buildCardInfo(),
    );
  }

  _buildCardInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildVisaLogo(),
        // SizedBox(width: 33.9.w),
        _buildVisaNumber(),
        // SizedBox(width: 21.2.w),
        _buildDeleteButton(),
      ],
    );
  }

  _buildVisaLogo() {
    return Container(
      width: 44.07.w,
      height: 29.62.h,
      child: Image.asset(cardImage),
    );
  }

  _buildVisaNumber() {
    return Text(cardNumber,
        style: getRegularStyle(
          fontSize: FontSize.s16,
          color: ColorManager.black1,
        ));
  }

  _buildDeleteButton() {
    return Container(
      width: 17.29.w,
      height: 17.29,
      decoration: BoxDecoration(
          border: Border.all(color: ColorManager.primary, width: 1.50.sp),
          borderRadius: BorderRadius.circular(14.r)),
      child: Icon(
        Icons.close,
        color: ColorManager.primary,
        size: 10.sp,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBackgroundContainer();
  }
}
