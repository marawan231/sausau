import 'package:flutter/material.dart';
import 'package:sausau/core/resources/strings_manager.dart';

import 'package:sausau/core/resources/utils.dart';
import 'package:sausau/features/privacy/presentation/widgets/policy_body.dart';

import '../../../../core/resources/constants.dart';
import '../../../../core/widgets/my_drawer.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class TermsView extends StatelessWidget {
  const TermsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.termsAndConditions,_scaffoldKey),
      body: const PolicyBody(
        text: termsText,
      ),
    );
  }
}
