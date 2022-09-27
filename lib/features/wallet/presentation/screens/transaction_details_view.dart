import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/assets_manager.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/features/wallet/presentation/widgets/circle_container.dart';
import 'package:sausau/features/wallet/presentation/widgets/transaction_card.dart';
import 'package:sausau/features/wallet/presentation/widgets/transaction_subtitle.dart';
import 'package:sausau/features/wallet/presentation/widgets/transaction_title.dart';
import '../../../../core/resources/color_manager.dart';

class TransactionDetailsView extends StatelessWidget {
  const TransactionDetailsView({Key? key}) : super(key: key);

  _buildTransactionDateCard(BuildContext context) {
    return TransactionCard(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TransactionTitle(title: AppStrings.transactionDate),
          SizedBox(height: 2.h),
          const TransactionSubtitle(text: '08-11-2022, 5:30 PM'),
        ],
      ),
    );
  }

  _buildTransactionIdCard(BuildContext context) {
    return TransactionCard(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TransactionTitle(title: AppStrings.transactionId),
          SizedBox(height: 2.h),
          const TransactionSubtitle(text: '05251212'),
        ],
      ),
    );
  }

  _buildTransactionAmountCard(BuildContext context) {
    return TransactionCard(
      height: 83.h,
      title: Column(
        // mainAxisAlignment: MainAxisAlignment.s,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.h),
          const TransactionTitle(title: AppStrings.transferToBank),
          SizedBox(height: 8.h),
          Row(
            children: [
              const CircleContainer(imagePath: ImageAssets.arrow),
              SizedBox(width: 6.w),
              const TransactionTitle(title: AppStrings.wallet)
            ],
          ),
        ],
      ),
      trailing: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '\$200.00',
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: ColorManager.primary,
              ),
        ),
      ]),
    );
  }

  _buildTransactionCreditToCard(BuildContext context) {
    return TransactionCard(
      height: 83.h,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 2.h),
          const TransactionTitle(title: AppStrings.creditTo),
          SizedBox(height: 7.h),
          Row(
            children: [
              CircleContainer(
                  imagePath: ImageAssets.bank, borderColor: ColorManager.black),
              SizedBox(width: 5.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TransactionTitle(title: '********451'),
                  TransactionTitle(title: "ICICI Bank Canada"),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(title: const Text(AppStrings.details), centerTitle: false),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 10.h,
        ),
        child: Column(
          children: [
            _buildTransactionDateCard(context),
            _buildTransactionIdCard(context),
            _buildTransactionAmountCard(context),
            _buildTransactionCreditToCard(context),
          ],
        ),
      ),
    );
  }
}
