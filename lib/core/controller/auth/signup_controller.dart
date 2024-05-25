import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:notebook/core/app%20routes/routes.dart';
import 'package:notebook/core/classes/crud.dart';
import 'package:notebook/core/constants/api_links.dart';

abstract class SignupController extends GetxController {
  signup();

  toLogin();
}

class SignupControllerImpl extends SignupController {
  Crud crud = Crud();
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
  signup() async {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      if (kDebugMode) {
        print('valid data!');
      }
      var response = await crud.postRequest(signupLink, {
        'username': username.text,
        'phone': phone.text,
        'email': email.text,
        'password': password.text,
      });
      if (response['status'] == 'success') {
        if (kDebugMode) {
          print('account created successfully');
        }
      } else {
        if (kDebugMode) {
          print('create account failed');
        }
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
