import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:notebook/core/app%20routes/routes.dart';

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
    if (formData!.validate()) {
      if (kDebugMode) {
        print('valid data');
      }
    } else {
      if (kDebugMode) {
        print('not valid data');
      }
    }
  }

  @override
  toSignup() {
    Get.offAllNamed(AppRoutes.signupView);
  }
}
