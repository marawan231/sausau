import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/style_manager.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';

import '../../../../core/resources/strings_manager.dart';

class GroupPayDetails extends StatelessWidget {
  const GroupPayDetails({Key? key}) : super(key: key);
  _buildId() {
    return Text(
      'SUSU ID: 04558',
      style: getMediumStyle(fontSize: FontSize.s20, color: ColorManager.black),
    );
  }

  _buildJoininAmountText() {
    return Text(
      'Joining amount',
      style: getMediumStyle(fontSize: FontSize.s20, color: ColorManager.black),
    );
  }

  _buildAmount() {
    return Text(
      '\$25.00',
      style:
          getSemiBoldStyle(fontSize: FontSize.s45, color: ColorManager.black),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.paymentDetails),
        centerTitle: false,
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: 23.h, left: 20.w, right: 20.w, bottom: 38.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildId(),
            _buildJoininAmountText(),
            _buildAmount(),
            const Spacer(),
            CustomButton(text: AppStrings.payNow, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
