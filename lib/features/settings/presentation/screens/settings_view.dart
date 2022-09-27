import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/utils.dart';
import 'package:sausau/features/groups/presentation/widgets/custom_divider.dart';
import 'package:sausau/features/settings/presentation/widgets/settings_item.dart';

import '../../../../core/resources/constants.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/widgets/my_drawer.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  _buildBody() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
      child: _buildSettingsList(),
    );
  }

  _buildSettingsList() {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const CustomDivider();
        },
        itemCount: settingImages.length,
        itemBuilder: (context, index) {
          return _buildSettingItem(index);
        });
  }

  _buildSettingItem(int index) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: 10.h, left: 12.w, right: 18.w, top: 10.h),
      child: SettingItem(
        index: index,
        image: settingImages[index],
        title: settingsTitles[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.settings,_scaffoldKey),
      body: _buildBody(),
    );
  }
}
