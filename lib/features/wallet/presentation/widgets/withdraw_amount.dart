import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';

class WithdrawAmount extends StatelessWidget {
  const WithdrawAmount({Key? key}) : super(key: key);

  _buildTitle(BuildContext context) {
    return Text('Withdraw Amount',
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontWeight: FontWeightManager.regular, color: ColorManager.black2));
  }

  _buildAmountContainer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: Container(
        height: 97.h,
        width: double.infinity,
        decoration: BoxDecoration(
            // color: ColorManager.transparent,
            border: Border.all(color: ColorManager.grey5),
            borderRadius: BorderRadius.all(Radius.circular(10.r))),
        child: _buildAmountValue(context),
      ),
    );
  }

  _buildAmountValue(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDollarSign(context),
        SizedBox(width: 7.w),
        _buildAmountText(context),
      ],
    );
  }

  _buildDollarSign(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h),
      child: SizedBox(
          height: 20.h, width: 9.w, child: Image.asset(ImageAssets.dollarSign)),
    );
  }

  _buildAmountText(BuildContext context) {
    return Text(
      '00.00',
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: FontSize.s35,
            fontWeight: FontWeightManager.medium,
            color: ColorManager.black2,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(context),
          _buildAmountContainer(context),
        ],
      ),
    );
  }
}
