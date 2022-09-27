import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';

class AgreeTermsText extends StatelessWidget {
  const AgreeTermsText({Key? key,required this.onTap}) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: AppStrings.agree,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorManager.black1,
                fontWeight: FontWeightManager.light,
              )),
      TextSpan(
          text: AppStrings.termsAndConditions,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                decoration: TextDecoration.underline,
              ),
          recognizer: TapGestureRecognizer()..onTap = onTap),
    ]));
  }
}
