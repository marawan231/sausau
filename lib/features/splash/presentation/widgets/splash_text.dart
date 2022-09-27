import 'package:flutter/material.dart';

import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';

class SplashText extends StatelessWidget {
  const SplashText({Key? key, r}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      AppStrings.splashText,
      style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: AppSize.s30),
    );
    
  }
}
