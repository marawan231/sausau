import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/core/resources/utils.dart';
import 'package:sausau/core/widgets/my_drawer.dart';
import '../../../../core/resources/color_manager.dart';
import '../widgets/notification_item.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return NotificationItem(
              color: (index == 0 || index == 1
                  ? ColorManager.lightPing
                  : ColorManager.white),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.notification,_scaffoldKey),
      body: _buildBody(),
    );
  }
}
