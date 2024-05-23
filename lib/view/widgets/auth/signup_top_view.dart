import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notebook/core/controller/auth/signup_controller.dart';

import '../../../core/constants/app theme/text_theme.dart';

class SignupTopView extends GetView<SignupControllerImpl> {
  const SignupTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Welcome Back',
          style: FontStyles.font20,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 25),
        Text(
          'Signup with your email and password to create an account',
          style: FontStyles.font18.copyWith(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
