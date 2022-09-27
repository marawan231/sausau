import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/resources/assets_manager.dart';
import 'social_auth_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons(
      {Key? key,
      required this.googleOnTap,
      required this.instgramOnTap,
      this.facebookOnTap,
      this.twitterOnTap})
      : super(key: key);
  final void Function()? googleOnTap;
  final void Function()? instgramOnTap;
  final void Function()? facebookOnTap;

  final void Function()? twitterOnTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 222.w,
        height: 42.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialAuthButton(
                image: ImageAssets.facebookImage, onTap: facebookOnTap),
            SizedBox(width: 19.w),
            SocialAuthButton(
                image: ImageAssets.twitterImage, onTap: twitterOnTap),
            SizedBox(width: 18.w),
            SocialAuthButton(
                image: ImageAssets.instgramImage, onTap: instgramOnTap),
            SizedBox(width: 19.w),
            SocialAuthButton(
                image: ImageAssets.googleImage, onTap: googleOnTap),
          ],
        ),
      ),
    );
  }
}
