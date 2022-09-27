import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/assets_manager.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/core/widgets/background_container.dart';
import 'package:sausau/core/widgets/small_button.dart';
import 'package:sausau/core/widgets/wallet_amount.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);

  _buildBackGroundImage(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        height: 146.h,
        child: Image.asset(
          ImageAssets.mask,
        ),
      ),
    );
  }

  _buildBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * .02,
        left: 16.w,
        // right: 26.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildMainInfo(context),
          _buildLogoView(context),
        ],
      ),
    );
  }

  _buildMainInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildWalletTitle(context),
        SizedBox(height: 6.h),
        _buildWalletMainFeatureText(context),
        const WalletAmount(),
      ],
    );
  }

  _buildWalletTitle(BuildContext context) {
    return Text(
      AppStrings.walletTitle,
      style: Theme.of(context).textTheme.displayMedium,
    );
  }

  _buildWalletMainFeatureText(BuildContext context) {
    return Text(
      AppStrings.balance,
      style: Theme.of(context).textTheme.displaySmall,
    );
  }

  _buildLogoView(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildWalletLogo(context),
        SizedBox(height: 40.h),
        Padding(
          padding: EdgeInsets.only(right: 18.w),
          child: SmallButton(
            onTap: () {},
            text: AppStrings.view,
          ),
        ),
      ],
    );
  }

  Widget _buildWalletLogo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 26.w),
      child: SizedBox(
        height: 26.h,
        width: 26.w,
        child: Image.asset(ImageAssets.splashLogo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundContainer(),
        _buildBackGroundImage(context),
        _buildBody(context),
      ],
    );
  }
}
