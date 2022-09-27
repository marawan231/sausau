import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/widgets/my_drawer.dart';
import 'package:sausau/features/groups/presentation/widgets/history_item.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/strings_manager.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class JoinGroupsView extends StatelessWidget {
  const JoinGroupsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(AppStrings.joinAdditional),
        centerTitle: false,
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Image.asset(ImageAssets.drawer),
        ),
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
      body: Padding(
        padding: EdgeInsets.only(top: 18.h, right: 20.w, left: 20.w),
        child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return const HistoryItem(showArrow: true);
            }),
      ),
    );
  }
}
