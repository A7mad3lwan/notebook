import 'package:flutter/material.dart';

import '../../../core/constants/app theme/text_theme.dart';
import 'custom_button.dart';

class SignupBottomView extends StatelessWidget {
  const SignupBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          child: CustomButton(
            onPressed: () {},
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
              onTap: () {},
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
