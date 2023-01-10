import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:login_flutter_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

class FadeInAnimatorController extends GetxController {
  static FadeInAnimatorController get find => Get.find();
  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds:3000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.to(()=>OnBoardingScreen());
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    // Get.offAll(() => const WelcomeScreen());
  }
}

// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)
// =>
// WelcomeScreen())
// );
