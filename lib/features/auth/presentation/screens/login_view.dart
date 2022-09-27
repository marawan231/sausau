import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';
import 'package:sausau/features/auth/presentation/widgets/login_bottom_text.dart';
import 'package:sausau/features/auth/presentation/widgets/social_buttons.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/route_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/widgets/custom_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget _buildLoginBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20.w,
        left: 20.w,
        // bottom: 100.h,
        top: 42.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBodyTitle(context),
          SizedBox(height: 35.h),
          _buildLoginForm(),
          SizedBox(height: 24.h),
          Align(
              alignment: Alignment.centerRight,
              child: _buildForgetPasswordText()),
          SizedBox(height: 28.h),
          _buildLoginButton(),
          SizedBox(height: 35.h),
          _buildSocialButtons(),
          SizedBox(height: 45.h),
          const Align(alignment: Alignment.center, child: BottomLoginText()),
        ],
      ),
    );
  }

  Widget _buildBodyTitle(BuildContext context) {
    return Text(
      AppStrings.login,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: _buildLoginTextFields(),
    );
  }

  Widget _buildLoginTextFields() {
    return Column(
      children: [
        _buildEmailTextField(),
        SizedBox(height: 16.h),
        _buildPassTextField(),
      ],
    );
  }

  Widget _buildEmailTextField() {
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      hintText: AppStrings.email,
      validator: (value) {
        return checkValidation(value);
      },
    );
  }

  Widget _buildPassTextField() {
    return CustomTextField(
      obscureText: true,
      controller: passwordController,
      hintText: AppStrings.password,
      validator: (value) {
        return checkValidation(value);
      },
    );
  }

  Widget _buildForgetPasswordText() {
    return InkWell(
      onTap: () {},
      child: Text(
        AppStrings.forgotPassword,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
            decoration: TextDecoration.underline, decorationThickness: 1.3),
      ),
    );
  }

  _buildSocialButtons() {
    return SocialButtons(
      googleOnTap: () {},
      instgramOnTap: () {},
    );
  }

  Widget _buildLoginButton() {
    return CustomButton(
        text: AppStrings.login,
        onPressed: () {
          Navigator.pushReplacementNamed(context, Routes.otpRoute);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorManager.white,
      appBar: buildLogoAppBar(context),
      body: _buildLoginBody(context),
    );
  }
}
