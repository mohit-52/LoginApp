import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/features/core/screens/profile/updated_profile_screen.dart';
import 'package:login_flutter_app/src/features/core/screens/profile/widgets/profile_menu.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/aurhentication_repository.dart';

import '../../../../constants/text_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            LineAwesomeIcons.angle_left,
            color: mDarkColor,
          ),
        ),
        title: Text(mProfile, style: Theme.of(context).textTheme.headline3),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
              },
              icon: Icon(
                isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon,
                color: mDarkColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(mDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                            image: AssetImage(mProfileImage),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: mPrimaryColor.withOpacity(0.9)),
                      child: Icon(
                        LineAwesomeIcons.alternate_pencil,
                        color: mDarkColor,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                mProfileHeading,
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                mProfileSubHeading,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => UpdatedProfileScreen()),
                  child: Text(mEditProfile),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: mPrimaryColor,
                      side: BorderSide.none,
                      shape: StadiumBorder()),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),

              // MENU
              ProfileMenuWidget(
                  title: "Setting",
                  icon: LineAwesomeIcons.cog,
                  onPressed: () {}),
              ProfileMenuWidget(
                  title: "Billing Details",
                  icon: LineAwesomeIcons.wallet,
                  onPressed: () {}),
              ProfileMenuWidget(
                  title: "User Management",
                  icon: LineAwesomeIcons.user_check,
                  onPressed: () {}),

              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                  title: "Information",
                  icon: LineAwesomeIcons.info,
                  onPressed: () {}),
              ProfileMenuWidget(
                title: "Logout",
                icon: LineAwesomeIcons.alternate_sign_out,
                onPressed: () {
                  AuthenticationRepository.instance.logout();
                },
                endIcon: false,
                textColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
