import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';



import '../../../../core/resources/strings_manager.dart';
import '../widgets/bottom_part.dart';
import '../widgets/custom_divider.dart';
import '../widgets/middle_part.dart';
import '../widgets/top_part.dart';

class GroupDetailsView extends StatelessWidget {
  const GroupDetailsView({Key? key}) : super(key: key);

  _buildBackgroundContainer() {
    return Padding(
      padding: EdgeInsets.only(top: 18.h, right: 20.w, left: 20.w),
      child: Container(
        height: 301.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: ColorManager.secondary,
            borderRadius: BorderRadius.all(Radius.circular(10.r))),
        child: _buildBody(),
      ),
    );
  }

  _buildBody() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TopPart(),
          CustomDivider(),
          MiddlePart(),
          CustomDivider(),
          BottomPart()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.details),
        centerTitle: false,
      ),
      body: _buildBackgroundContainer(),
    );
  }
}
