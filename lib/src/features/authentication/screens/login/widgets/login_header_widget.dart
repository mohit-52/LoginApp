import 'package:flutter/material.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image(
          image: AssetImage(mWelcomeScreenImage),
          height: size.height * 0.2,
        ),
        Text(
          mLoginTitle,
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          mLoginSubTitle,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

