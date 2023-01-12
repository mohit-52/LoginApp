import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_flutter_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:login_flutter_app/src/features/authentication/screens/login/widgets/login_form_widget.dart';
import 'package:login_flutter_app/src/features/authentication/screens/signUp/widgets/signup_form_widget.dart';

import '../../../../constants/colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(mDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormHeaderWidget(
                    image: mWelcomeScreenImage,
                    title: mSignUpTitle,
                    subtitle: mSignUpSubTitle),
                SignupFormWidget(),
                Column(
                  children: [
                    Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(mGoogleLogoImage),
                          width: 20.0,
                        ),
                        label:  Text(mSignInWithGoogle.toUpperCase()),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text.rich(
                            TextSpan(text: mAlreadyHaveAccount, style: TextStyle(color: mSecondaryColor), children: [
                          TextSpan(
                            text: mLogin,style: TextStyle(color: Colors.blue),
                          ),
                        ])))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
