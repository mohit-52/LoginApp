import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/features/authentication/screens/login/widgets/login_fotter_widget.dart';
import 'package:login_flutter_app/src/features/authentication/screens/login/widgets/login_header_widget.dart';
import '../../../../constants/sizes.dart';
import 'widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(mDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LoginHeaderWidget(),
                LoginForm(),
                LoginFotterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }


}
