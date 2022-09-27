import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget? child;

  const TextFieldContainer({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 45.h,
      width: double.infinity,
      child: child,
    );
  }
}
