import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/constants.dart';

import '../../../../core/resources/color_manager.dart';
import 'drawer_item.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 279.w,
      backgroundColor: ColorManager.primary,
      child: Padding(
        padding: EdgeInsets.only(top: 55.h, left: 20.w),
        child: ListView.builder(
            itemCount: drawerIcons.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: index == 11 ? 18.h : 0),
                child: DrawerItem(
                  index: index,
                    icon: drawerIcons[index], title: drawerTitles[index]),
              );
            }),
      ),
    );
  }
}
