import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';
import 'package:sausau/core/widgets/custom_textfield.dart';

class TextFieldWithTitle extends StatelessWidget {
  const TextFieldWithTitle(
      {Key? key, required this.text, required this.controller})
      : super(key: key);

  final String text;
  final TextEditingController controller;
  _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Text(
        text,
        style: getLightStyle(fontSize: 14, color: ColorManager.black1),
      ),
    );
  }

  _buildTextField() {
    return CustomTextField(
      controller: controller,
      text: controller.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        SizedBox(height: 12.h),
        _buildTextField(),
      ],
    );
  }
}
