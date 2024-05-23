import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notebook/core/controller/auth/login_controller.dart';

import '../../widgets/auth/login_view_body.dart';

class LoginView extends GetView<LoginControllerImpl> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'login page',
          ),
        ),
        body: const LoginViewBody(),
      ),
    );
  }
}
