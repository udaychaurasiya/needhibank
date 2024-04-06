import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bankforcustomer/Auth/View/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 400.r,
      splash: 'assets/images/splash.png',
      nextScreen: LoginPage(),
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
