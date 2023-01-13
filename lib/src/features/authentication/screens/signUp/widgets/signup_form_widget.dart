import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
            SizedBox(
              width: double.infinity,
              child:  ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      SignupController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
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