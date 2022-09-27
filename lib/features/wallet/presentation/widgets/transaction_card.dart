import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({Key? key, this.title, this.trailing, this.leading, this.height})
      : super(key: key);
  final Widget? title;
  final Widget? trailing;
  final Widget? leading;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 74.h,
      child: Card(
        margin: EdgeInsets.only(bottom: 9.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s5.r)),
          side: BorderSide(
            width: .5,
            color: ColorManager.grey5,
          ),
        ),
        // borderOnForeground: true,
        color: ColorManager.transparent,
        elevation: AppSize.s0,
        child: ListTile(
          title: title,
          leading: leading,
          trailing: trailing,
        ),
      ),
    );
  }
}
