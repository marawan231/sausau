import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import 'custom_check_box.dart';

class AgreeTermsCheckBox extends StatelessWidget {
  const AgreeTermsCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyCustomCheckBox(
      borderRadius: 3.r,
      splashRadius: 1.sp,
      borderColor: ColorManager.black1,
      value: true,
      borderWidth: 1,
      checkedIconColor: ColorManager.black1,
      shouldShowBorder: true,
      checkedFillColor: ColorManager.transparent,
      onChanged: (bool value) {},
    );
  }
}
