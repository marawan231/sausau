import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/assets_manager.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';

import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/widgets/my_drawer.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class HowItWorksView extends StatelessWidget {
  const HowItWorksView({Key? key}) : super(key: key);

  _buildBody() {
    return Padding(
      padding: EdgeInsets.only(top: 21.h, right: 20.w, left: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDescription(),
          SizedBox(height: 10.h),
          _buildQuestionHint(),
          SizedBox(height: 9.h),
          _buildVideo(),
          SizedBox(height: 21.h),
          _buildDetails(),
        ],
      ),
    );
  }

  _buildDescription() {
    return Text(
      'Our mission is to provide a home for like-\nminded people to work together, to practice the Universal Laws of giving and receiving, and to offer an activity where everyone can be happy and successful.',
      style: getSemiBoldStyle(
        fontSize: FontSize.s14,
        color: ColorManager.black,
      ).copyWith(
        fontStyle: FontStyle.italic,
      ),
    );
  }

  _buildQuestionHint() {
    return Text(
      'What is a SuSu (Sou-Sou) & How Does It Works',
      style: getBoldStyle(fontSize: FontSize.s14, color: ColorManager.black),
    );
  }

  _buildVideo() {
    return Stack(children: [
      Container(
        width: double.infinity,
        // height: 184.h,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8.r))),
        child: Image.asset(
          ImageAssets.video,
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 154.w, top: 71.h),
        child: Image.asset(ImageAssets.play),
      ),
    ]);
  }

  _buildDetails() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$25',
            style: getRegularStyle(
                fontSize: FontSize.s14, color: ColorManager.black),
          ),
          SizedBox(height: 30.h),
          Expanded(
              child: SingleChildScrollView(
            child: Text(
              '\$25 = \$200 - \$25 = \$175 - \$50 = \$125\n            Water  Regift         Tier Up   Pocket\n(When that person number comes up and they paid there \$25 they will be put in the fire position. Then that person / number will move to the next position Wind the next week there is No money they need to give or subscribe. The week after that person / number will move to the Earth position, there is No money they need to give or subscribe. The following week that person / number will move to the Water position, there E-wallet should have \$200 from the people / numbers in the Fire position. E- wallet should automictically take out (one time) \$75.  \$25 will come out every time this person / number is in the Fire position from the money they receive from the Water position.  the \$50 out of the \$75 will come out that one time and the person / number will be in Tier 2 and in the Fire position in that Tier.',
              style: getRegularStyle(
                fontSize: FontSize.s14,
                color: ColorManager.black,
              ),
            ),
          )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.howItWorks,_scaffoldKey),
      body: _buildBody(),
    );
  }
}
