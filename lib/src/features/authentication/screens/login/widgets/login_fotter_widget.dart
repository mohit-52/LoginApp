import 'package:flutter/material.dart';

import '../../../../../constants/image_string.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class LoginFotterWidget extends StatelessWidget {
  const LoginFotterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(
          height: mFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(
                image: AssetImage(mGoogleLogoImage),
                width: 25,
              ),
              onPressed: () {},
              label: Text(mSignInWithGoogle)),
        ),
        const SizedBox(
          height: mFormHeight - 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(TextSpan(
              text: mDontHaveAccount,
              style: Theme.of(context).textTheme.bodyText1,
              children: [
                TextSpan(
                    text: mSignUp,
                    style: TextStyle(color: Colors.blue)
                ),
              ]
          )),
        )
      ],
    );
  }
}
