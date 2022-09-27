import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';

import '../../../../core/resources/style_manager.dart';

class CustomDropDownMenu extends StatefulWidget {
  const CustomDropDownMenu({Key? key}) : super(key: key);

  @override
  State<CustomDropDownMenu> createState() => _CustomDropDownMenuState();
}

class _CustomDropDownMenuState extends State<CustomDropDownMenu> {
  final items = ['item 1', 'item2', 'item3', 'item4'];
  // ignore: prefer_typing_uninitialized_variables
  var value;
  _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Text(
        'Select your bank',
        style: getLightStyle(fontSize: 14, color: ColorManager.black1),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: Text(
            item,
            style: TextStyle(
              fontWeight: FontWeightManager.regular,
              color: ColorManager.black,
              fontSize: FontSize.s14,
            ),
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        SizedBox(height: 12.h),
        Container(
          height: 45.h,
          decoration: BoxDecoration(
              border: Border.all(
                color: ColorManager.grey5,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.r))),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
                isExpanded: true,
                icon: const Icon(Icons.arrow_drop_down),
                value: value,
                items: items.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value)),
          ),
        ),
      ],
    );
  }
}
