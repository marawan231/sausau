import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      // endIndent: MediaQuery.of(context).size.width * .05,
      color: ColorManager.dividerColor,
      //   height: 10,
      thickness: .5,
    );
  }
}
