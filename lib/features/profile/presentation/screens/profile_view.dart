// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sausau/features/groups/presentation/widgets/custom_divider.dart';
import 'package:sausau/features/profile/presentation/widgets/avatar_section.dart';

import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/widgets/my_drawer.dart';
import '../widgets/user_info.dart';
var _scaffoldKey = GlobalKey<ScaffoldState>();

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  

  _buildBody() {
    return Padding(
      padding: EdgeInsets.only(top: 25.h, right: 20.w, left: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AvatarSection(),
          CustomDivider(),
          UserInfo(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.profile,_scaffoldKey),
      body: _buildBody(),
    );
  }
}
