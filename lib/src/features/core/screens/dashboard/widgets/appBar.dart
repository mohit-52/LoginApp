import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_string.dart';
import '../../../../../constants/text_strings.dart';
import '../../profile/profile_screen.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashboardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: mDarkColor,
      ),
      title: Text(
        mAppName,
        style: Theme.of(context).textTheme.headline4,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: mCardBgColor),
          child: IconButton(
            onPressed: () {
              Get.to(() => ProfileScreen());
              // AuthenticationRepository.instance.logout();
            },
            icon:  Image(
              image: AssetImage(mUserProfileImage),
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}