import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/route_manager.dart';
import '../../../../core/resources/strings_manager.dart';

class BottomLoginText extends StatelessWidget {
  const BottomLoginText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: AppStrings.dontHaveAccount,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorManager.black1,
              )),
      TextSpan(
          text: AppStrings.accSignUp,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                decoration: TextDecoration.underline,
                fontWeight: FontWeightManager.bold,
              ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.pushReplacementNamed(context, Routes.registerRoute);
            }),
    ]));
  }
}
