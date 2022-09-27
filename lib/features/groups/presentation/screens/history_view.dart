import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/widgets/my_drawer.dart';
import '../widgets/history_item.dart';
  var _scaffoldKey = GlobalKey<ScaffoldState>();


class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);
  _buildHistoryViewBody() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHistoryViewTitle(),
          SizedBox(height: 17.h),
          _buildHistoryItemsList(),
        ],
      ),
    );
  }

  _buildHistoryViewTitle() {
    return Text(
      'You are currently in 5 Groups',
      style: getSemiBoldStyle(
        fontSize: 14,
        color: ColorManager.black,
      ),
    );
  }

  _buildHistoryItemsList() {
    return Expanded(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const HistoryItem(
              showArrow: false,
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(AppStrings.history),
        centerTitle: false,
        leading: InkWell(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: Image.asset(ImageAssets.drawer)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 33.w),
            child: SizedBox(
              height: 14.61.h,
              width: 14.61.w,
              child: Image.asset(ImageAssets.search),
            ),
          )
        ],
      ),
      body: _buildHistoryViewBody(),
    );
  }
}
