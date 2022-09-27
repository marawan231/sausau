import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';
import 'package:sausau/features/wallet/presentation/widgets/custom_dropdown.dart';
import 'package:sausau/core/widgets/textfield_with_title.dart';

import '../../../../core/resources/strings_manager.dart';

class WithdrawView extends StatefulWidget {
  const WithdrawView({Key? key}) : super(key: key);

  @override
  State<WithdrawView> createState() => _WithdrawViewState();
}

class _WithdrawViewState extends State<WithdrawView> {
  TextEditingController withdrawAmountController = TextEditingController();

  TextEditingController bankController = TextEditingController();

  TextEditingController swiftCodeController = TextEditingController();

  TextEditingController accountNumberController = TextEditingController();

  _buildWithdrawBody() {
    withdrawAmountController.text = '\$ 500';
    bankController.text = 'City Bank';

    return Padding(
      padding:
          EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h, bottom: 30.h),
      child: Column(
        children: [
          TextFieldWithTitle(
            controller: withdrawAmountController,
            text: 'Withdraw amount',
          ),
          SizedBox(height: 19.h),
          const CustomDropDownMenu(),
          SizedBox(height: 25.h),
          TextFieldWithTitle(
            controller: swiftCodeController,
            text: 'Enter swift code',
          ),
          SizedBox(height: 25.h),
          TextFieldWithTitle(
            controller: accountNumberController,
            text: 'Enter account number',
          ),
          const Spacer(),
          CustomButton(text: AppStrings.withdraw, onPressed: () {})
        ],
      ),
    );
  }
  //TODO: fix this Ui

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.withdrawTitle),
        centerTitle: false,
      ),
      body: _buildWithdrawBody(),
    );
  }
}
