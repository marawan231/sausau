import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/assets_manager.dart';
import 'package:sausau/core/resources/color_manager.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/route_manager.dart';
import 'package:sausau/core/resources/values_manager.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({Key? key}) : super(key: key);

  Widget _buildTitle(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment Recieved',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: FontSize.s9,
                color: ColorManager.black2,
              ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * .005),
        _buildPaymentDate(context),
      ],
    );
  }

  Widget _buildPaymentDate(BuildContext context) {
    return Text(
      '08-11-2022, 5:30 PM',
      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: FontSize.s8,
            color: ColorManager.black2,
          ),
    );
  }

  _buildPaymentInfo(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '+   200.00',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              // fontSize: FontSize.s8,
              ),
        ),
        Text(
          'Flower ID: 0458',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorManager.grey5,
                fontSize: FontSize.s8,
              ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 14.h),
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s5)),
        side: BorderSide(
          color: ColorManager.grey5,
        ),
      ),
      // borderOnForeground: true,
      color: ColorManager.transparent,
      elevation: AppSize.s0,
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, Routes.transactionDetailsRoute);
        },
        title: _buildTitle(context),
        leading: Image.asset(ImageAssets.paymentLogo),
        trailing: _buildPaymentInfo(context),
      ),
    );
  }
}
