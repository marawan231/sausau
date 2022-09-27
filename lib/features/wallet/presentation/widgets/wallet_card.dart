import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/route_manager.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/core/resources/values_manager.dart';
import 'package:sausau/core/widgets/background_container.dart';
import 'package:sausau/core/widgets/small_button.dart';
import 'package:sausau/core/widgets/wallet_amount.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';
import 'package:sausau/features/wallet/presentation/widgets/withdraw_amount.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({Key? key}) : super(key: key);

  _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.vertical(top: Radius.circular(AppSize.s20.r))),
        context: context,
        builder: (context) {
          return _buildBottomSheetContent(context);
        });
  }

  Widget _buildBottomSheetContent(BuildContext context) {
    return SizedBox(
      height: 365.h,
      child: Padding(
        padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * .05,
          left: MediaQuery.of(context).size.width * .05,
          top: 70.h,
          bottom: 30.h,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAr/ound,
          children: [
            const WithdrawAmount(),
            const Spacer(),
            CustomButton(
                text: 'NEXT',
                onPressed: () {
                  Navigator.pushNamed(context, Routes.withdrawRoute);
                }),
          ],
        ),
      ),
    );
  }

  _buildWalletCardInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.h),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildAccountBalanceText(context),
          SizedBox(height: 3.h),
          WalletAmount(
            amountSize: FontSize.s27,
            dollarSignSize: FontSize.s16,
            dollarSignPadding: 0.0,
          ),
          SizedBox(height: 3.h),
          SmallButton(
            onTap: () {
              _openBottomSheet(context);
            },
            width: 142.w,
            height: 36.h,
            text: AppStrings.withdraw,
          )
        ],
      ),
    );
  }

  _buildAccountBalanceText(BuildContext context) {
    return Text(
      AppStrings.accBalance,
      style: Theme.of(context)
          .textTheme
          .titleSmall!
          .copyWith(fontWeight: FontWeightManager.regular),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundContainer(height: 136.h),
        _buildWalletCardInfo(context),
      ],
    );
  }
}
