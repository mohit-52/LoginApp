import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_flutter_app/src/features/authentication/models/user_model.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forgot_password/forgot_password_otp/otp_screen.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/aurhentication_repository.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../../controllers/signup_controller.dart';

final _formKey = GlobalKey<FormState>();

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());


    return Container(
      padding: EdgeInsets.symmetric(vertical: mFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                  label: Text(mFullName),
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: mFormHeight - 20,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  label: Text(mEmail),
                  prefixIcon: Icon(Icons.email)),
            ),
            SizedBox(
              height: mFormHeight - 20,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                  label: Text(mPhoneNumber),
                  prefixIcon: Icon(Icons.phone)),
            ),
            SizedBox(
              height: mFormHeight - 20,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                  label: Text(mPassword),
                  prefixIcon: Icon(Icons.fingerprint)),
            ),
            SizedBox(
              height: mFormHeight - 20,
            ),
            // SIGNUP BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // EMAIL AND PASSWORD AUTHENTICATION
                      // SignupController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());

                      // For Phone Authentication
                      // SignupController.instance.phoneAuthentication(controller.phoneNo.text.trim());

                      // Get user details name, phoneNo, email and password and then otp login
                      final user = UserModel(
                          fullName: controller.fullName.text.trim(),
                          email: controller.email.text.trim(),
                          phoneNo: controller.phoneNo.text.trim(),
                          password: controller.password.text.trim());
                      SignupController.instance.createUser(user);

                    }
                  },
                  child: Text(
                    mSignUp.toUpperCase(),
                    style: TextStyle(color: mWhiteColor),
                  )),
            )
          ],
        ),
      ),
    );
  }
}