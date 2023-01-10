import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forgot_password/forgot_password_otp/otp_screen.dart';
import 'package:login_flutter_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_flutter_app/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:login_flutter_app/src/features/authentication/screens/signUp/signup_Screen.dart';
import 'package:login_flutter_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login_flutter_app/src/utils/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowMaterialGrid: false,
      defaultTransition: Transition.leftToRight,
      transitionDuration: const Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.leaderboard),
        title: Text("LoginApp"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'Heading',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Sub-Heading',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Paragraph',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text("ELEVTAED BUTTON")),
            OutlinedButton(
                onPressed: () {}, child: const Text("Outline Button")),
            const Padding(
              padding: const EdgeInsets.all(20),
              child: Image(
                image: AssetImage("assets/images/book.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
