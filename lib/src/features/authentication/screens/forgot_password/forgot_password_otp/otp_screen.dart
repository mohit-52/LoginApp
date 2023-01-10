import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

import '../../../../../constants/sizes.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(mDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mOtpTitle,
              style: GoogleFonts.montserrat(
                  fontSize: 80.0, fontWeight: FontWeight.bold),
            ),
            Text(mOtpSubTitle, style: Theme.of(context).textTheme.headline6),
            SizedBox(
              height: mFormHeight + 10,
            ),
            Text(
              "$mOtpMessage support@gmail.com",
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              keyboardType: TextInputType.number,
              onSubmit: (code){print("OTP is $code");},

            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: null, child: Text(mNext.toUpperCase(), style: TextStyle(color: mWhiteColor),)))
          ],
        ),
      ),
    );
  }
}