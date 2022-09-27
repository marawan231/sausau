import 'package:flutter/material.dart';
import 'package:sausau/features/groups/presentation/widgets/custom_divider.dart';
import 'package:sausau/features/profile/presentation/widgets/user_info_item.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        UserInfoItem(title: 'Name', data: 'Kevin Zegres'),
        CustomDivider(),
        UserInfoItem(title: 'Email', data: 'Kevin@email.com'),
        CustomDivider(),
        UserInfoItem(title: 'Phone Number', data: '+1 985 547 2222'),
        CustomDivider(),
      ],
    );
  }
}
