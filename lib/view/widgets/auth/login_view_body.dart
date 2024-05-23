import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notebook/core/constants/app%20theme/text_theme.dart';
import 'package:notebook/view/widgets/auth/custom_button.dart';
import 'package:notebook/view/widgets/auth/custom_form_filed.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
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
        const CustomFormFiled(
          labelText: 'email',
          hintText: 'enter your email',
          suffix: FontAwesomeIcons.envelope,
        ),
        const CustomFormFiled(
          labelText: 'password',
          hintText: 'enter your password',
          suffix: FontAwesomeIcons.eye,
        ),
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
        CustomButton(
          onPressed: () {},
          btnText: 'login',
        ),
      ],
    );
  }
}
