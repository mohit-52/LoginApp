import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_flutter_app/src/features/authentication/screens/forgot_password/forgot_password_mail/forget_password_mail.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../forgot_password_phone/forgot_password_phone.dart';
import 'forgot_password_btn_widget.dart';

class ForgotPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        context: context,
        builder: (context) =>
            Container(
              padding:  EdgeInsets.all(mDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mForgetPasswordTitle,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline2,
                  ),
                  Text(
                    mForgetPasswordSubTitle,
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyText2,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ForgetPasswordButtonWidget(
                    btnIcon: Icons.mail_outline_rounded,
                    title: mEmail,
                    subTitle: mResetViaMail,
                    onTap: () {
                      Navigator.pop(context);
                      Get.to(()=> const ForgotPasswordMail());},
                  ),
                  SizedBox(height: mFormHeight - 10,),
                  ForgetPasswordButtonWidget(
                      btnIcon: Icons.phone_forwarded_rounded,
                      title: mPhoneNumber,
                      subTitle: mResetViaPhone,
                    onTap: () {
                      Navigator.pop(context);
                      Get.to(()=> const ForgotPasswordPhone());},),

                ],
              ),
            ));
  }
}