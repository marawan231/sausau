// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/assets_manager.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';

import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/widgets/my_drawer.dart';
var _scaffoldKey = GlobalKey<ScaffoldState>();


class InviteOthersView extends StatelessWidget {
  const InviteOthersView({Key? key}) : super(key: key);

  _buildBody() {
    return Padding(
      padding:
          EdgeInsets.only(right: 20.w, left: 20.w, top: 19.3.h, bottom: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildInviteImage(),
          SizedBox(height: 6.h),
          _buildTitle(),
          SizedBox(height: 10.h),
          _buildSubtitle(),
          SizedBox(height: 34.h),
          _buildHintText(),
          SizedBox(height: 18.h),
          _buildCode(),
          const Spacer(),
          CustomButton(text: 'INVITE VIA CONTACTS', onPressed: () {}),
          SizedBox(height: 15.h),
          CustomButton(text: 'SHARE INVITE LINK', onPressed: () {}),
        ],
      ),
    );
  }

  _buildInviteImage() {
    return Container(
      height: 139.82.h,
      width: 131.05.w,
      child: Image.asset(ImageAssets.invite),
    );
  }

  _buildTitle() {
    return Text(
      AppStrings.inviteOthers.toUpperCase(),
      style: getBoldStyle(
        fontSize: FontSize.s20,
        color: ColorManager.black,
      ),
    );
  }

  _buildSubtitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      height: 87.h,
      width: double.infinity,
      child: Text(
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. ',
        style:
            getRegularStyle(fontSize: FontSize.s14, color: ColorManager.black),
        textAlign: TextAlign.center,
      ),
    );
  }

  _buildHintText() {
    return Text(
      'Your Referral Code',
      style: getSemiBoldStyle(
        fontSize: FontSize.s16,
        color: ColorManager.black,
      ),
    );
  }
  //TODO refactor 

  _buildCode() {
    return DottedBorder(
      color: ColorManager.primary,
      dashPattern: const [8, 4],
      strokeWidth: 2,
      strokeCap: StrokeCap.round,
      borderType: BorderType.RRect,
      radius: Radius.circular(6.r),
      padding: EdgeInsets.zero,
      child: Container(
        width: 205.w,
        height: 45.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6.r)),
          color: ColorManager.secondary,
        ),
        child: Center(
          child: Text(
            '#0254789',
            style: getRegularStyle(
              fontSize: FontSize.s18,
              color: ColorManager.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.inviteOthers,_scaffoldKey),
      body: _buildBody(),
    );
  }
}
