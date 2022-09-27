import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/constants.dart';

import 'package:sausau/features/instruction/presentation/widgets/asnwer.dart';
import 'package:sausau/features/instruction/presentation/widgets/question.dart';

import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/widgets/my_drawer.dart';
var _scaffoldKey = GlobalKey<ScaffoldState>();


class FaqView extends StatelessWidget {
  const FaqView({Key? key}) : super(key: key);
  _buildBody() {
    return Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h),
        child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
            itemCount: 11,
            itemBuilder: (context, index) {
              return index == 1
                  ? const Answer()
                  : Question(
                      questionText: faqQuestions[index],
                    );
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.faq,_scaffoldKey),
      body: _buildBody(),
    );
  }
}
