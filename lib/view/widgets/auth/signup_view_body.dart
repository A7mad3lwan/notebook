import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notebook/core/functions/validator.dart';
import 'package:notebook/view/widgets/auth/custom_form_filed.dart';
import 'package:notebook/view/widgets/auth/signup_bottom_view.dart';
import 'package:notebook/view/widgets/auth/signup_top_view.dart';


class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
      children: [
        const SignupTopView(),
        CustomFormFiled(
          validator: (val) {
            return formValidator(val!, 'username', 100, 2);
          },
          labelText: 'username',
          hintText: 'enter your username',
          suffix: FontAwesomeIcons.user,
        ),
        CustomFormFiled(
          validator: (val) {
            return formValidator(val!, 'phone', 15, 5);
          },
          keyboardType: TextInputType.phone,
          labelText: 'phone',
          hintText: 'enter your phone',
          suffix: FontAwesomeIcons.phone,
        ),
        CustomFormFiled(
          validator: (val) {
            return formValidator(val!, 'email', 100, 5);
          },
          labelText: 'email',
          hintText: 'enter your email',
          suffix: FontAwesomeIcons.envelope,
        ),
        CustomFormFiled(
          validator: (val) {
            return formValidator(val!, 'password', 100, 8);
          },
          labelText: 'password',
          hintText: 'enter your password',
          suffix: FontAwesomeIcons.eye,
        ),
        const SignupBottomView(),
      ],
    );
  }
}
