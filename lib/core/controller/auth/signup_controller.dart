import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:notebook/core/app%20routes/routes.dart';

abstract class SignupController extends GetxController {
  signup();

  toLogin();
}

class SignupControllerImpl extends SignupController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  signup() {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      if (kDebugMode) {
        print('valid data!');
      }
    } else {
      if (kDebugMode) {
        print('not valid data!');
      }
    }
  }

  @override
  toLogin() {
    Get.offAllNamed(AppRoutes.loginView);
  }
}
