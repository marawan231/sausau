import 'package:flutter/material.dart';

import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/logo.dart';

class LogoAppBar extends StatelessWidget {
  const LogoAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(AppSize.s160),
        child: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * .04,
              left: MediaQuery.of(context).size.width * .05),
          child: Row(
            children: const [Logo()],
          ),
        ),
      ),
    );
  }
}
