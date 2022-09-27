import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/assets_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/values_manager.dart';

import '../widgets/logo.dart';

// bool visible = true;

PreferredSizeWidget buildLogoAppBar(BuildContext context) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(AppSize.s140.h),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 28.h,
          right: 255.w,
          left: 20.h,
        ),
        child: const Logo(),
      ),
    ),
  );
}

PreferredSizeWidget buildHomeAppBar(
  BuildContext context, {
  required GlobalKey<ScaffoldState> key,
}) {
  return AppBar(
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 20.w),
        child: GestureDetector(
          onTap: () {
            // Navigator.pushNamed(context, Routes.notiftcation);
          },
          child: SizedBox(
              width: 13.76.w,
              height: 19.05.h,
              child: Image.asset(ImageAssets.notifitcation)),
        ),
      )
    ],
    title: const Text('Home'),
    centerTitle: false,
    leading: InkWell(
        onTap: () {
          key.currentState?.openDrawer();
        },
        child: Image.asset(ImageAssets.drawer)),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(AppSize.s120.sp),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 33.h,
          left: 20.w,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: 'Hello,\n',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            TextSpan(
              text: 'Kevin Zegars!',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontSize: FontSize.s22,
                  ),
            )
          ])),
        ),
      ),
    ),
  );
}

showErrorMesssage({required String? text, required context, Color? color}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text.toString(),
        textAlign: TextAlign.center,
      ),
      backgroundColor: color,
    ),
  );
}

// GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

buildDefaultAppBar(String title, GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
      title: Text(title),
      centerTitle: false,
      leading: InkWell(
          onTap: () {
            // toggleDrawer();
            scaffoldKey.currentState!.openDrawer();
          },
          child: Image.asset(ImageAssets.drawer)));
}


checkValidation(value) {
  if (value == null || value.isEmpty) {
    return 'Please enter a valid data';
  }
}
