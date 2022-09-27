import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/assets_manager.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/core/resources/utils.dart';
import 'package:sausau/core/resources/values_manager.dart';

import '../../../../core/resources/route_manager.dart';
import '../../../../core/widgets/my_drawer.dart';
import '../widgets/category_card.dart';
import '../widgets/home_card.dart';
var _scaffoldKey = GlobalKey<ScaffoldState>();

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget _buildBodyBackground(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppSize.s20.r),
          topLeft: Radius.circular(AppSize.s20.r),
        ),
      ),
      child: _buildBodyView(context),
    );
  }

  Widget _buildBodyView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          const HomeCard(),
          SizedBox(height: 30.h),
          Row(
            children: [
              CategoryCard(
                categoryImage: ImageAssets.catWallet,
                categoryText: AppStrings.eWallet,
                onTap: () {
                  Navigator.pushNamed(context, Routes.walletRoute);
                },
              ),
              SizedBox(width: 21.w),
              CategoryCard(
                categoryImage: ImageAssets.catHistory,
                categoryText: AppStrings.history,
                onTap: () {
                  Navigator.pushNamed(context, Routes.historyRoute);
                },
              )
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              CategoryCard(
                categoryImage: ImageAssets.catUser,
                categoryText: AppStrings.joinAdditional,
                onTap: () {
                  Navigator.pushNamed(context, Routes.joinGroupRoute);
                },
              ),
              SizedBox(width: 21.w),
              CategoryCard(
                categoryImage: ImageAssets.catInvite,
                categoryText: AppStrings.inviteOthers,
                onTap: () {
                  Navigator.pushNamed(context, Routes.inviteOthersRoute);
                },
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultScaffold(
    //   appBar: buildHomeAppBar(context, key: scaffoldKey),
    //   body: _buildBodyBackground(context),
    // );
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildHomeAppBar(context, key: _scaffoldKey),
      backgroundColor: ColorManager.primary,
      body: _buildBodyBackground(context),
    );
  }
}
