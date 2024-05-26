import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/app theme/text_theme.dart';
import '../../../core/controller/auth/signup_controller.dart';
import 'custom_button.dart';

class SignupBottomView extends GetView<SignupControllerImpl> {
  const SignupBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          child: CustomButton(
            onPressed: () async{
              await controller.signup();
              controller.toLogin();
            },
            btnText: 'signup',
          ),
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'already have an account?',
              style: FontStyles.font18,
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () {
                controller.toLogin();
              },
              child: Text(
                'login',
                style: FontStyles.font18.copyWith(color: Colors.deepOrange),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
