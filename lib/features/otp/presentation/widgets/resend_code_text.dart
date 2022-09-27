import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/strings_manager.dart';

class ResendCodeText extends StatelessWidget {
  const ResendCodeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: AppStrings.recieveCode,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorManager.black,
              )),
      TextSpan(
          text: AppStrings.resendCode,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                decoration: TextDecoration.underline,
              ),
          recognizer: TapGestureRecognizer()..onTap = () {}),
    ]));
  }
}
