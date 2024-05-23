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
            onPressed: () {
              controller.login();
            },
            btnText: 'login',
          ),
        ),
      ],
    );
  }
}
