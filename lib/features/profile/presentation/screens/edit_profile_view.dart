// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/assets_manager.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';
import 'package:sausau/core/resources/utils.dart';
import 'package:sausau/core/widgets/textfield_with_title.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';

import '../../../../core/widgets/my_drawer.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  _buildBody() {
    return Padding(
      padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 26.h),
      child: ListView(
        children: [
          _buildAvatarPart(),
          SizedBox(height: 29.h),
          _buildUserInfo(),
          SizedBox(height: 235.h),
          // const Spacer(),
          CustomButton(text: AppStrings.save, onPressed: () {}),
        ],
      ),
    );
  }

  _buildAvatarPart() {
    return Row(
      children: [
        _buildAvatar(),
        SizedBox(width: 14.w),
        _buildHeadline(),
      ],
    );
  }

  _buildAvatar() {
    return Stack(
      children: [
        _buildImage(),
        _buildCameraButton(),
      ],
    );
  }

  _buildImage() {
    return Container(
        height: 75.h,
        width: 70.w,
        child: Image.asset(
          ImageAssets.avatar,
          fit: BoxFit.cover,
        ));
  }

  _buildCameraButton() {
    return Positioned(
      left: 46,
      top: 46,
      child: Container(
        height: 22.h,
        width: 22.w,
        child: CircleAvatar(
          backgroundColor: ColorManager.secondary,
          child: Icon(
            Icons.camera_alt_outlined,
            size: 12.sp,
            color: ColorManager.black,
          ),
        ),
      ),
    );
  }

  _buildHeadline() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildUserName(),
        _buildCountryText(),
      ],
    );
  }

  _buildUserName() {
    return Text(
      'Kevin Zegers',
      style: getMediumStyle(fontSize: FontSize.s18, color: ColorManager.black),
    );
  }

  _buildCountryText() {
    return Text(
      'Canada',
      style: getRegularStyle(fontSize: FontSize.s10, color: ColorManager.black),
    );
  }

  _buildUserInfo() {
    nameController.text = 'Kevin Zegres';
    emailController.text = 'Kevin@mail.com';
    phoneNumberController.text = '+1 985 547 2222';
    return Column(
      children: [
        TextFieldWithTitle(text: 'Name', controller: nameController),
        SizedBox(height: 20.h),
        TextFieldWithTitle(text: 'Email', controller: emailController),
        SizedBox(height: 20.h),
        TextFieldWithTitle(
            text: 'Phone Number', controller: phoneNumberController),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.editProfile, _scaffoldKey),
      body: _buildBody(),
    );
  }
}
