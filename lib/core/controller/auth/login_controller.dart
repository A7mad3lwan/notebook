import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:notebook/core/app%20routes/routes.dart';
import 'package:notebook/core/classes/crud.dart';
import 'package:notebook/core/constants/api_links.dart';
import 'package:notebook/core/constants/app_services.dart';

abstract class LoginController extends GetxController {
  login();

  toSignup();
}

class LoginControllerImpl extends LoginController {
  Crud crud = Crud();
  AppServices appServices = Get.find();
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
  login() async {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      if (kDebugMode) {
        print('valid data');
      }
      var response = await crud.postRequest(loginLink, {
        'email' : email.text,
        'password' : password.text,
      });
      if (response['status'] == 'success') {
        if (kDebugMode) {
          print('login success');
        }
        appServices.sharedPreferences.setString('id', response['data']['id'].toString());
        appServices.sharedPreferences.setString('username', response['data']['username'].toString());
        appServices.sharedPreferences.setString('phone', response['data']['phone'].toString());
        appServices.sharedPreferences.setString('email', response['data']['email'].toString());
        appServices.sharedPreferences.setString('password', response['data']['password'].toString());
      } else {
        if (kDebugMode) {
          print('not valid email or password!');
        }
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
