import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_flutter_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

import '../forgot_password_otp/otp_screen.dart';

class ForgotPasswordMail extends StatelessWidget {
  const ForgotPasswordMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(mDefaultSize),
            child: Column(
              children: [
                SizedBox(
                  height: mDefaultSize * 4,
                ),
                FormHeaderWidget(
                  image: mForgotPasswordCenterImage,
                  title: mForgotPassword,
                  subtitle: mForgetPasswordSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: mDefaultSize,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text(mEmail),
                          hintText: mEmail,
                          prefixIcon: Icon(Icons.mail_outline_rounded)),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child:
                            ElevatedButton(onPressed: () {
                              Get.to(() => OTPScreen());
                            }, child: Text("NEXT")))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
