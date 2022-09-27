// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/style_manager.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 206.h,
      decoration: BoxDecoration(
          color: ColorManager.secondary,
          border: Border.all(color: ColorManager.grey5),
          borderRadius: BorderRadius.all(Radius.circular(10.r))),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 21.5.w),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '02.  How did this concept begin?',
                  style: getMediumStyle(
                    fontSize: FontSize.s10,
                    color: ColorManager.black,
                  ),
                ),
                const Spacer(),
                const InkWell(child: Icon(Icons.keyboard_arrow_up)),
              ],
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.only(left: 22.w, right: 33.w),
              child: Container(
                height: 143.h,
                width: double.infinity,
                child: Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      'Privately, giving gifts to one another has always been an expression of appreciation and kindness, which has been happening for centuries. Governments have allowed and supported its practice by allowing institutions and individuals to share their wealth with families, friends and others. It has always been a means of helping and blessing others on special occasions or when the need arises.Many cultures gift as a matter of course. Asian, Jewish and South American communities give gifts to individuals within their culture on a regular basis so that they may start a business or buy a home. They in turn gift someone else to help enhance their lives. Habitat for Humanity is a great example of private giving. Everyone participates with their time, their talents and materials to build a home for someone else. Some participate with a hammer, some with nails, some with food and others with the monetary gifts to purchase the supplies, but all create a team that works together to bless someone\'s life.',
                      style: getMediumStyle(
                        fontSize: FontSize.s10,
                        color: ColorManager.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
