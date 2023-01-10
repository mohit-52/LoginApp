import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_flutter_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/screens/signUp/signup_Screen.dart';
import 'package:login_flutter_app/src/utils/themes/widget_themes/elevated_button_theme.dart';

import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';
import '../login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimatorController());
    controller.startAnimation();
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    var isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? mSecondaryColor : mPrimaryColor,
      body: Stack(children: [
        MFadeInAnimation(
          durationInMs: 600,
          animate: MAnimatedPosition(
            bottomAfter: 0, bottomBefore: -100,
            topAfter: 0, topBefore: 0,
            leftBefore: 0, leftAfter: 0,
            rightAfter: 0, rightBefore: 0,
          ),
          child: Container(
            padding: EdgeInsets.all(mDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: AssetImage(mWelcomeScreenImage),
                  height: height * 0.6,
                ),
                Column(
                  children: [
                    Text(
                      mWelcomeTitle,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      mWelcomeSubTitle,
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Get.to(() => const LoginScreen()),
                        child: Text(mLogin.toUpperCase()),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => Get.to(() => const SignupScreen()),
                        child: Text(mSignUp.toUpperCase()),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
