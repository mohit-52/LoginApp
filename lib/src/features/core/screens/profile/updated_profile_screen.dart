import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class UpdatedProfileScreen extends StatelessWidget {
  const UpdatedProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: ()=> Get.back(),
          icon: const Icon(
            LineAwesomeIcons.angle_left,
            color: mDarkColor,
          ),
        ),
        title: Text(mEditProfile, style: Theme.of(context).textTheme.headline3),
        centerTitle: true,
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
                        LineAwesomeIcons.camera,
                        color: mDarkColor,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50,),
              Form(
                child: Column(
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
                      height: mFormHeight ,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(mEditProfile),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: mPrimaryColor,
                            side: BorderSide.none,
                            shape: StadiumBorder()),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
