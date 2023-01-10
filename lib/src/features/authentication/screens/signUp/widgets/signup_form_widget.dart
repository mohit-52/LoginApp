import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: mFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(mFullName),
                  prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: mFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(mEmail),
                  prefixIcon: Icon(Icons.email)),
            ),
            SizedBox(
              height: mFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  label: Text(mPhoneNumber),
                  prefixIcon: Icon(Icons.phone)),
            ),
            SizedBox(
              height: mFormHeight - 20,
            ),
            TextFormField(
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
                  onPressed: null,
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