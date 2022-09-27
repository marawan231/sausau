import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/widgets/custom_textfield.dart';
import 'package:sausau/core/widgets/my_drawer.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';

import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/utils.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

//Todo fix text field here too
class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);
  _buildBody() {
    return Padding(
      padding:
          EdgeInsets.only(top: 40.h, right: 20.w, left: 20.w, bottom: 35.h),
      child: Column(
        children: [
          CustomTextField(hintText: 'Full Name', height: 45.h),
          SizedBox(height: 16.h),
          const CustomTextField(hintText: 'Email'),
          SizedBox(height: 16.h),
          CustomTextField(
             
            hintText: 'Message',
            height: 126.h,
          ),
          const Spacer(),
          CustomButton(text: AppStrings.sumbit, onPressed: () {}),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.contact,_scaffoldKey),
      body: _buildBody(),
    );
  }
}
