import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/widgets/logo.dart';
import 'package:sausau/features/splash/presentation/widgets/splash_text.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Logo(
          height: 198.h,
          widht: 198.w,
        ),
        SizedBox(height: 8.h),
        const SplashText(),
      ],
    );
  }
}
