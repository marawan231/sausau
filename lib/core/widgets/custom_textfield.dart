// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.controller,
    this.text,
    this.width = 0.92,
    this.height,
    this.suffixIcon,
    this.keyboardType = TextInputType.name,
    this.validator,
    this.obscureText = false,
  }) : super(key: key);
  final double? height;
  final double width;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? text;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;

  Widget _buildTextField(BuildContext context) {
    return Container(
      height: height ?? 45.h,
      child: TextFormField(
        // textAlignVertical: TextAlignVertical.center,
        expands: true,
        minLines: null,
        maxLines: null,
        decoration: InputDecoration(
          hintText: hintText,
        ),
        // obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        cursorColor: Theme.of(context).primaryColor,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: FontSize.s14,
              color: ColorManager.black,
            ),
        controller: controller,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTextField(context);
  }
}
