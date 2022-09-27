import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';

class TransactionTitle extends StatelessWidget {
  const TransactionTitle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: FontSize.s10,
            color: ColorManager.black2,
          ),
    );
  }
}
