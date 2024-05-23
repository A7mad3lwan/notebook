import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:notebook/core/controller/auth/signup_controller.dart';

import '../../widgets/auth/signup_view_body.dart';

class SignupView extends GetView<SignupControllerImpl> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'signup page',
          ),
          leading: IconButton(
            onPressed: () {
              controller.toLogin();
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
        ),
        body: const SignupViewBody(),
      ),
    );
  }
}
