import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/controllers/on_boardinbg_controller.dart';
import 'package:login_flutter_app/src/features/authentication/screens/on_boarding/on_borading_page_widget.dart';
import 'package:login_flutter_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/image_string.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangedCallback,
            pages: obcontroller.pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableLoop: true,
          ),
          Positioned(
            bottom: 60,
            child: OutlinedButton(
                onPressed: () {
                  if (obcontroller.currenPage.value == 2) {
                    Navigator.pop(context);
                    Get.to(()=> WelcomeScreen());
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return WelcomeScreen();
                    // }));
                  } else {
                    obcontroller.animateToNextSlide();
                  }
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(color: mDarkColor),
                  shape: CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  onPrimary: mWhiteColor,
                ),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                      color: mDarkColor, shape: BoxShape.circle),
                  child: Icon(
                    Icons.arrow_forward_ios,
                  ),
                )),
          ),
          Positioned(
              top: 50,
              right: 10,
              child: TextButton(
                onPressed: () => obcontroller.skip(),
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey),
                ),
              )),
          Obx(
            () => Positioned(
              bottom: 15,
              child: AnimatedSmoothIndicator(
                activeIndex: obcontroller.currenPage.value,
                count: 3,
                effect: const WormEffect(
                    activeDotColor: mDarkColor, dotHeight: 5.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
