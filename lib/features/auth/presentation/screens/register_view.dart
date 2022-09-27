import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sausau/core/resources/route_manager.dart';
import 'package:sausau/core/resources/strings_manager.dart';
import 'package:sausau/features/auth/presentation/widgets/agree_terms_check_box.dart';
import 'package:sausau/features/auth/presentation/widgets/agree_terms_text.dart';
import 'package:sausau/features/auth/presentation/widgets/bottom_register_text.dart';
import 'package:sausau/features/auth/presentation/widgets/custom_button.dart';
import 'package:sausau/features/auth/presentation/widgets/social_buttons.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/widgets/custom_textfield.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController invitationCodeController = TextEditingController();

  Widget _buildRegisterBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20.w,
        left: 20.w,
        // bottom: 20.h,
        top: 42.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBodyTitle(context),
          SizedBox(height: 35.h),
          _buildRegisterViewBody(),
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildAgreeTermsAndConditions(),
              SizedBox(height: 24.h),
              _buildLoginButton(),
              SizedBox(height: 31.h),
              _buildSocialButtons(),
              SizedBox(height: 36.h),
              const Align(
                  alignment: Alignment.center, child: BottomRegisterText()),
            ],
          ))
        ],
      ),
    );
  }

  Widget _buildBodyTitle(BuildContext context) {
    return Text(
      AppStrings.createAccount,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }

  Widget _buildRegisterViewBody() {
    return SizedBox(
      height: 180.h,
      child: _buildRegisterForm(),
    );
  }

  Widget _buildRegisterForm() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            child: _buildRegisterTextFields()),
      ),
    );
  }

  Widget _buildRegisterTextFields() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildFirstNameTextField(),
        _buildLastNameTextField(),
        _buildEmailTextField(),
        _buildPhoneNumberTextField(),
        _buildPassTextField(),
        _buildConfirmPasswordTextField(),
        _buildInvitationCodeTextField(),
      ],
    );
  }

  Widget _buildFirstNameTextField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      controller: firstNameController,
      hintText: AppStrings.firstName,
      validator: (value) {
        return checkValidation(value);
      },
    );
  }

  Widget _buildLastNameTextField() {
    return CustomTextField(
      keyboardType: TextInputType.text,
      controller: lastNameController,
      hintText: AppStrings.lastName,
      validator: (value) {
        return checkValidation(value);
      },
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

  Widget _buildPhoneNumberTextField() {
    return CustomTextField(
      keyboardType: TextInputType.phone,
      controller: phoneNumberController,
      hintText: AppStrings.phoneNumber,
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

  Widget _buildConfirmPasswordTextField() {
    return CustomTextField(
      obscureText: true,
      controller: confirmPasswordController,
      hintText: AppStrings.confirmPassword,
      validator: (value) {
        return checkValidation(value);
      },
    );
  }

  Widget _buildInvitationCodeTextField() {
    return CustomTextField(
      controller: invitationCodeController,
      hintText: AppStrings.invitationCode,
      validator: (value) {
        return checkValidation(value);
      },
    );
  }

  Widget _buildAgreeTermsAndConditions() {
    return Row(
      children: [
        const AgreeTermsCheckBox(),
        AgreeTermsText(
          onTap: () {},
        ),
      ],
    );
  }

  _buildSocialButtons() {
    return SocialButtons(
      googleOnTap: () {},
      instgramOnTap: () {},
      facebookOnTap: () {},
      twitterOnTap: () {},
    );
  }

  Widget _buildLoginButton() {
    return CustomButton(
        text: AppStrings.signUp,
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
      body: _buildRegisterBody(context),
    );
  }
}
