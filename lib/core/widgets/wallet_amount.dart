import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/font_manager.dart';

class WalletAmount extends StatelessWidget {
  const WalletAmount({Key? key, this.dollarSignSize, this.amountSize, this.dollarSignPadding})
      : super(key: key);
  final double? dollarSignSize;
  final double? amountSize;
  final double? dollarSignPadding;

  _buildWalletMoneyAmount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildDollarSign(context),
        _buildAmount(context),
      ],
    );
  }

  _buildDollarSign(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: dollarSignPadding ?? 19.h,
        right: 7.w,
      ),
      child: Text('\$',
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: dollarSignSize ?? FontSize.s18,
              )),
    );
  }

  _buildAmount(BuildContext context) {
    return Text(
      '500.00',
      style: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontSize: amountSize ?? FontSize.s35,
            fontWeight: FontWeightManager.semiBold,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildWalletMoneyAmount(context);
  }
}
