import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/font_manager.dart';
import 'package:sausau/core/resources/route_manager.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';

import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/widgets/custom_textfield.dart';

class PayementDetailsView extends StatefulWidget {
  const PayementDetailsView({Key? key}) : super(key: key);

  @override
  State<PayementDetailsView> createState() => _PayementDetailsViewState();
}

class _PayementDetailsViewState extends State<PayementDetailsView> {
  final _formKey = GlobalKey<FormState>();

  Widget _buildUpperBody(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(context),
        SizedBox(height: 15.h),
        _buildAmount(context),
        SizedBox(height: 22.h),
        _buildHint(),
        SizedBox(height: 10.h),
        _buildPaymentForm(),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      AppStrings.totalAmount,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeightManager.medium,
          ),
    );
  }

  Widget _buildAmount(BuildContext context) {
    return Text(
      AppStrings.amount,
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontSize: FontSize.s45,
          ),
    );
  }

  Widget _buildHint() {
    return Padding(
      padding: EdgeInsets.only(left: 12.w),
      child: Text(AppStrings.enterCardDetails,
          style: Theme.of(context).textTheme.displaySmall),
    );
  }

  Widget _buildPaymentForm() {
    return Form(key: _formKey, child: _buildTextFields());
  }

  Widget _buildTextFields() {
    return Column(
      children: [
        _buildNameOnCardTextField(),
        SizedBox(height: 20.h),
        _buildCardNumberTextField(),
        SizedBox(height: 20.h),
        Row(
          children: [
            _buildCardExpiryTextField(),
            SizedBox(width: 18.w),
            _buildCvvTextField(),
          ],
        ),
      ],
    );
  }

  Widget _buildNameOnCardTextField() {
    return CustomTextField(
      // keyboardType: TextInputType.emailAddress,
      // controller: emailController,
      hintText: AppStrings.nameOnCard,
      validator: (value) {
        return checkValidation(value);
      },
    );
  }

  Widget _buildCardNumberTextField() {
    return CustomTextField(
      // keyboardType: TextInputType.emailAddress,
      // controller: emailController,
      hintText: AppStrings.cardNumber,
      validator: (value) {
        return checkValidation(value);
      },
    );
  }

  Widget _buildCardExpiryTextField() {
    return Expanded(
      child: CustomTextField(
        // keyboardType: TextInputType.emailAddress,
        // controller: emailController,
        hintText: AppStrings.cardExpiry,
        validator: (value) {
          return checkValidation(value);
        },
      ),
    );
  }

  Widget _buildCvvTextField() {
    return Expanded(
      child: CustomTextField(
        // keyboardType: TextInputType.emailAddress,
        // controller: emailController,
        hintText: AppStrings.cvv,
        validator: (value) {
          return checkValidation(value);
        },
      ),
    );
  }

  Widget _buildBottomBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .05),
          child: CustomButton(
              text: AppStrings.payNow,
              onPressed: () {
                Navigator.pushNamed(context, Routes.paymentSuccessRoute);
              }),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.paymentDetails),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          right: 20.w,
          left: 20.w,
          top: 35.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: _buildUpperBody(context)),
            Expanded(child: _buildBottomBody(context)),
          ],
        ),
      ),
    );
  }
}
