import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

abstract class LoginController extends GetxController {
  login();

  toSignup();
}

class LoginControllerImpl extends LoginController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController email = TextEditingController();
  late TextEditingController password = TextEditingController();
  IconData passwordSuffix = FontAwesomeIcons.eye;
  bool? obscureText = true;

  showPassword() {
    if (obscureText = obscureText == true) {
      obscureText = false;
      passwordSuffix = FontAwesomeIcons.eyeSlash;
      update();
    } else {
      obscureText = true;
      passwordSuffix = FontAwesomeIcons.eye;
      update();
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  login() {
    var formData = formKey.currentState;
    if (formData!.validate()) {}
  }

  @override
  toSignup() {}
}