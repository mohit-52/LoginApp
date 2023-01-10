import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';
import '../../../../constants/sizes.dart';
import '../welcome_screen/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  // @override
  // void initState() {
  //   splashController.startAnimation();
  // }

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimatorController());
    controller.startSplashAnimation();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // SPLASH TOP ICON IMAGE
            MFadeInAnimation(
              durationInMs: 1600,
              animate: MAnimatedPosition(
                topBefore: -60,
                topAfter: 0,
                leftBefore: -60,
                leftAfter: 0,
                heightAfter: mDefaultImageHeight,
                heightBefore: mDefaultImageHeight,
                widthAfter: mDefaultImageHeight,
                widthBefore: mDefaultImageHeight,
              ),
              child: const Image(image: AssetImage(mSplashTopIcon)),
            ),
            // APP TITLE TEXT
            MFadeInAnimation(
              durationInMs: 2000,
              animate: MAnimatedPosition(
                topBefore: -100, topAfter: 90,
                leftBefore: -20, leftAfter: 150,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    mAppName,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(mAppTagLine,
                      style: Theme.of(context).textTheme.subtitle1),
                ],
              ),
            ),
// SPLASH IMAGE LOGO
            MFadeInAnimation(
              durationInMs: 1600,
              animate: MAnimatedPosition(
                bottomBefore: -300,
                bottomAfter: 200,
                leftAfter: 15,
                heightBefore: mDefaultLargeImageHeight,
                heightAfter: mDefaultLargeImageHeight,
                widthBefore: mDefaultLargeImageHeight,
                widthAfter: mDefaultLargeImageHeight,
              ),
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1000),
                  opacity: controller.animate.value ? 1 : 0,
                child: const Image(
                  image: AssetImage(
                    mSplashImage,
                  ),
                ),
              )
            ),

            MFadeInAnimation(
              durationInMs: 1000,
              animate: MAnimatedPosition(
                bottomAfter: 20,bottomBefore: -20,
                rightBefore: -30, rightAfter: 30

 ),
              child: Container(
                width: mSplashContainerSize,
                height: mSplashContainerSize,
                decoration: BoxDecoration(
                  color: mPrimaryColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
