import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/style_manager.dart';

class Question extends StatelessWidget {
  const Question({Key? key, required this.questionText}) : super(key: key);

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42.h,
      decoration: BoxDecoration(
          border: Border.all(color: ColorManager.grey5),
          borderRadius: BorderRadius.all(Radius.circular(10.r))),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 21.5.w),
        child: Row(
          children: [
            Text(
              questionText,
              style: getMediumStyle(
                fontSize: FontSize.s10,
                color: ColorManager.black,
              ),
            ),
            const Spacer(),
            const InkWell(child: Icon(Icons.keyboard_arrow_down)),
          ],
        ),
      ),
    );
  }
}
