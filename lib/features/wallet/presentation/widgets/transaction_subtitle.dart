import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';

class TransactionSubtitle extends StatelessWidget {
  const TransactionSubtitle(
      {Key? key, required this.text, this.regular = false})
      : super(key: key);
  final String text;
  final bool regular;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: FontSize.s12,
            color: ColorManager.black2,
            fontWeight:
                regular ? FontWeightManager.regular : FontWeightManager.medium,
          ),
    );
  }
}
