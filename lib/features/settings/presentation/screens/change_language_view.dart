import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/constants.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/features/settings/presentation/widgets/language_item.dart';

class ChangeLanguagesView extends StatelessWidget {
  const ChangeLanguagesView({Key? key}) : super(key: key);

  _buildBodyView() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h),
      child: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return LanguageItem(
              selected: index == 0 ? true : false,
              text: languages[index],
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(AppStrings.changeLanguage),
      ),
      body: _buildBodyView(),
    );
  }
}
