import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/constants.dart';
import '../../../../core/resources/route_manager.dart';
import '../widgets/splash_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  void _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  void _goNext() {
    Navigator.pushReplacementNamed(context, Routes.loginRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorManager.primary, ColorManager.secondary],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: const Center(
          child: SplashBody(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }
}
