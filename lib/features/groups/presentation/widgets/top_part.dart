import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../../../../core/widgets/wallet_amount.dart';

class TopPart extends StatelessWidget {
  const TopPart({Key? key}) : super(key: key);
  _builTopPart() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildMoneyAmount(),
        _buildCurrentLevel(),
      ],
    );
  }

  _buildMoneyAmount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildMoneyAmountHeadline(),
        _buildAmount(),
      ],
    );
  }

  _buildMoneyAmountHeadline() {
    return Text(
      'Money earned',
      style: getSemiBoldStyle(
        fontSize: FontSize.s14,
        color: ColorManager.black,
      ),
    );
  }

  _buildAmount() {
    return const WalletAmount();
  }

  _buildCurrentLevel() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildCurrentLevelHeadline(),
        SizedBox(height: 10.h),
        _buildLevel(),
      ],
    );
  }

  _buildCurrentLevelHeadline() {
    return Text(
      'Your current level',
      style: getSemiBoldStyle(
        fontSize: FontSize.s14,
        color: ColorManager.black,
      ),
    );
  }

  _buildLevel() {
    return Row(
      children: [
        _buildAirText(),
        _buildAirLogo(),
      ],
    );
  }

  _buildAirText() {
    return Text(
      "AIR",
      style: getSemiBoldStyle(
        fontSize: FontSize.s16,
        color: ColorManager.black,
      ),
    );
  }

  _buildAirLogo() {
    return SizedBox(
      width: 32.w,
      height: 32.h,
      child: Image.asset(ImageAssets.air),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _builTopPart();
  }
}
