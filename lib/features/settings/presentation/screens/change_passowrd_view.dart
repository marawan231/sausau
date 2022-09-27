import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';
import 'package:sausau/core/widgets/my_drawer.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';
import 'package:sausau/features/settings/presentation/widgets/custom_pass_button.dart';

import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/widgets/custom_textfield.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);
  _buildBody() {
    return Padding(
      padding:
          EdgeInsets.only(top: 40.h, right: 20.w, left: 20.w, bottom: 35.h),
      child: Column(
        children: [
          const CustomTextField(
            hintText: 'Current Password',
            // height: 45.h,
          ),
          SizedBox(height: 16.h),
          const CustomTextField(
            hintText: 'New Password',
          ),
          SizedBox(height: 16.h),
          const CustomTextField(
            hintText: 'Re-type New Password',
            // height: 126.h,
          ),
          const Spacer(),
          Column(
            children: [
              CustomButton(text: 'UPDATE PASSWORD', onPressed: () {}),
              SizedBox(height: 16.h),
              CustomPassButton(text: 'CANCEL', onPressed: () {}),
              SizedBox(height: 22.h),
              _buildForgotPassText(),
            ],
          ),
        ],
      ),
    );
  }

  _buildForgotPassText() {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Forgot your Password',
        style: getLightStyle(
          fontSize: FontSize.s14,
          color: ColorManager.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.changePassword,_scaffoldKey),
      body: _buildBody(),
    );
  }
}
