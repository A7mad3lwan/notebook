import 'package:flutter/material.dart';

import '../../widgets/auth/login_view_body.dart';

class LoginView extends StatelessWidget {
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