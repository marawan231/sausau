import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../auth/presentation/widgets/custom_button.dart';
import '../../../payment/presentation/widgets/payment_image.dart';

class GroupPaySuccess extends StatelessWidget {
  const GroupPaySuccess({Key? key}) : super(key: key);

  _buildPaymentHint(BuildContext context) {
    return Text(
      'Payment Completed You have joined ID: 04558 group Successfully',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeightManager.medium,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.paymentSuccess),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          right: 20.w,
          left: 20.w,
          top: 115.6.h,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const PaymentImage(),
            SizedBox(height: 59.7.h),
            _buildPaymentHint(context),
            SizedBox(height: 246.h),
            CustomButton(
                text: AppStrings.goHome,
                onPressed: () {
                  // Navigator.pushNamed(context, Routes.mainRoute);
                }),
          ],
        ),
      ),
    );
  }
}
