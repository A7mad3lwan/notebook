import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:notebook/core/controller/auth/login_controller.dart';

import '../../../core/constants/app theme/text_theme.dart';
import 'custom_button.dart';

class LoginBottomView extends GetView<LoginControllerImpl> {
  const LoginBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: () {},
            child: const Text(
              'forget password?',
              style: FontStyles.font18,
            ),
          ),
        ),
        const SizedBox(height: 50),
        SizedBox(
          width: double.infinity,
          child: CustomButton(
            onPressed: () async {
              await controller.login();
            },
            btnText: 'login',
          ),
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'don\'t have an account?',
              style: FontStyles.font18,
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () {
                controller.toSignup();
              },
              child: Text(
                'signup',
                style: FontStyles.font18.copyWith(color: Colors.deepOrange),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
