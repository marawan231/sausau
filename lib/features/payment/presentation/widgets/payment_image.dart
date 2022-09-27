import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/assets_manager.dart';

class PaymentImage extends StatelessWidget {
  const PaymentImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 146.69.h,
      width: 197.65.w,
      child: Image.asset(
        ImageAssets.paymentImage,
      ),
    );
  }
}
