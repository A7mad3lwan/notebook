import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notebook/core/controller/auth/login_controller.dart';

import '../../../core/constants/app theme/text_theme.dart';

class LoginTopView extends GetView<LoginControllerImpl> {
  const LoginTopView({super.key});

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
          'Login with your email and password to add new notes',
          style: FontStyles.font18.copyWith(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
