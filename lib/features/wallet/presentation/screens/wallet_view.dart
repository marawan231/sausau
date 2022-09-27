import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/strings_manager.dart';
// import 'package:sausau/features/home/presentation/widgets/my_drawer.dart';
import 'package:sausau/features/wallet/presentation/widgets/payment_card.dart';
import 'package:sausau/features/wallet/presentation/widgets/payment_details.dart';
import 'package:sausau/features/wallet/presentation/widgets/wallet_card.dart';

import '../../../../core/resources/utils.dart';
import '../../../../core/widgets/my_drawer.dart';
import '../widgets/wallet_categories.dart';

var _scaffoldKey = GlobalKey<ScaffoldState>();

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);

  Widget _buildWalletBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
        top: 14.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const WalletCard(),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          _buildWalletViewTitle(context),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          const WalletCategories(),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          const PaymentDetails(),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          _buildPaymentsList(),
        ],
      ),
    );
  }

  _buildPaymentsList() {
    return Expanded(
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return const PaymentCard();
          }),
    );
  }

  Widget _buildWalletViewTitle(BuildContext context) {
    return Text(AppStrings.walletSummary,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(fontWeight: FontWeightManager.semiBold));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
    appBar: buildDefaultAppBar(AppStrings.wallet, _scaffoldKey),
      body: _buildWalletBody(context),
    );
  }
}
