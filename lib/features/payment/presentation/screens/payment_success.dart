import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/route_manager.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';
import 'package:sausau/features/payment/presentation/widgets/payment_image.dart';

class PaymentSucessView extends StatelessWidget {
  const PaymentSucessView({Key? key}) : super(key: key);
  _buildPaymentHint(BuildContext context) {
    return Text(
      AppStrings.paymentHint,
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
            SizedBox(height: 86.7.h),
            _buildPaymentHint(context),
            SizedBox(height: 254.h),
            CustomButton(
                text: AppStrings.goHome,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.mainRoute);
                }),
          ],
        ),
      ),
    );
  }
}
