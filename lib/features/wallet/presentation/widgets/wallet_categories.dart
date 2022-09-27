import 'package:flutter/material.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/strings_manager.dart';

class WalletCategories extends StatelessWidget {
  const WalletCategories({Key? key}) : super(key: key);

  _buildCategories(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: () {},
            child: Text(AppStrings.all,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: ColorManager.secondary,
                    ))),
        TextButton(
            onPressed: () {},
            child: Text(AppStrings.earned,
                style: Theme.of(context).textTheme.labelSmall)),
        TextButton(
            onPressed: () {},
            child: Text(AppStrings.withdraw,
                style: Theme.of(context).textTheme.labelSmall)),
        TextButton(
            onPressed: () {},
            child: Text(AppStrings.invest,
                style: Theme.of(context).textTheme.labelSmall)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .07,
      decoration: BoxDecoration(color: ColorManager.primary),
      child: _buildCategories(context),
    );
  }
}
