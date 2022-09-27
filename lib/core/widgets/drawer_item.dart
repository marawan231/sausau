import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/constants.dart';
import 'package:sausau/core/resources/font_manager.dart';

import '../../../../core/resources/style_manager.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key, required this.icon, required this.title, required this.index})
      : super(key: key);
  final IconData icon;
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (ModalRoute.of(context)!.settings.name != drawerRoutes[index]) {
          // print(ModalRoute.of(context)!.settings.name.toString());
          Navigator.pop(context);
          Navigator.pushReplacementNamed(context, drawerRoutes[index]);
        } else {
          Navigator.pop(context);
          // print('object');
        }
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 33.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: ColorManager.white,
              size: 17.sp,
            ),
            SizedBox(width: 12.w),
            Text(
              title,
              style: getRegularStyle(
                  fontSize: FontSize.s14,
                  color: ColorManager.white,
                  fontFamily: FontConstants.sofiaFontFamily),
            ),
          ],
        ),
      ),
    );
  }
}
