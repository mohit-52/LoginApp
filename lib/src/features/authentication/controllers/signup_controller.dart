import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/aurhentication_repository.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // TEXT CONTROLLERS TO GET DATA FROM TEXT FIELD

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  // CALL THIS FUNCTION FROM THE DESIGN AND IT WILL REGISTER THE USER

  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
