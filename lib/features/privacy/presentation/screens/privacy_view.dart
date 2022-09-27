import 'package:flutter/material.dart';

import '../../../../core/resources/constants.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/widgets/my_drawer.dart';
import '../widgets/policy_body.dart';
var _scaffoldKey = GlobalKey<ScaffoldState>();


class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      appBar: buildDefaultAppBar(AppStrings.privacyPolicy,_scaffoldKey),
      body: const PolicyBody(
        text: termsText,
      ),
    );
  }
}
