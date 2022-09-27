// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/core/resources/utils.dart';
import 'package:sausau/core/widgets/custom_textfield.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';
import 'package:sausau/features/otp/presentation/widgets/resend_code_text.dart';

import '../../../../core/resources/route_manager.dart';

class OtpVerfication extends StatelessWidget {
  const OtpVerfication({Key? key}) : super(key: key);
  Widget _buildUpperBody(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.w,
          top: 42.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildOtpVerficationTitle(context),
            SizedBox(height: 24.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildOtpMessage(context),
                _buildMobileNumber(context),
              ],
            ),
            SizedBox(height: 11.h),
            _buildHint(context),
            SizedBox(height: 12.h),
            _buildOtpTextField(context),
            SizedBox(height: 20.h),
            const ResendCodeText(),
          ],
        ),
      ),
    );
  }

  _buildOtpVerficationTitle(BuildContext context) {
    return Text(
      AppStrings.verfication,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }

  _buildOtpMessage(BuildContext context) {
    return Text(
      AppStrings.otpMessage,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  _buildMobileNumber(BuildContext context) {
    return Text(
      AppStrings.mobileNumber,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  _buildHint(BuildContext context) {
    return Text(
      AppStrings.otpHint,
      style: Theme.of(context).textTheme.displaySmall,
    );
  }

  _buildOtpTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 145.w),
      child: CustomTextField(
        keyboardType: TextInputType.number,
        hintText: AppStrings.otpHere,
        validator: (value) {
          return checkValidation(value);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildLogoAppBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildUpperBody(context),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    bottom: 50.h,
                  ),
                  child: CustomButton(
                      text: AppStrings.verfiy,
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Routes.paymentDetailsRoute,
                        );
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
