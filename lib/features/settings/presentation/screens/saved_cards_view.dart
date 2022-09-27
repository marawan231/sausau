import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/assets_manager.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/core/resources/utils.dart';
import 'package:sausau/core/widgets/my_drawer.dart';
import 'package:sausau/features/settings/presentation/widgets/saved_card_item.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class SavedCardsView extends StatelessWidget {
  const SavedCardsView({Key? key}) : super(key: key);

  _buildBody() {
    return Padding(
      padding: EdgeInsets.only(top: 28.h, left: 20.w, right: 20.w),
      child: Column(
        children: [
          const SavedCard(
              cardNumber: '****  ****   ****   2233',
              cardImage: ImageAssets.visa),
          SizedBox(height: 14.h),
          const SavedCard(
              cardNumber: '****  ****   ****   4589',
              cardImage: ImageAssets.mastercard),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.savedCards,_scaffoldKey),
      body: _buildBody(),
    );
  }
}
