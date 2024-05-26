import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:notebook/core/functions/validator.dart';
import 'package:notebook/view/widgets/auth/custom_form_filed.dart';
import 'package:notebook/view/widgets/auth/signup_bottom_view.dart';
import 'package:notebook/view/widgets/auth/signup_top_view.dart';

import '../../../core/controller/auth/signup_controller.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImpl controller = Get.put(SignupControllerImpl());
    return Form(
      key: controller.formKey,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
        children: [
          const SignupTopView(),
          CustomFormFiled(
            controller: controller.username,
            validator: (val) {
              return formValidator(val!, 'username', 100, 2);
            },
            labelText: 'username',
            hintText: 'enter your username',
            suffix: FontAwesomeIcons.user,
          ),
          CustomFormFiled(
            controller: controller.phone,
            validator: (val) {
              return formValidator(val!, 'phone', 15, 5);
            },
            keyboardType: TextInputType.phone,
            labelText: 'phone',
            hintText: 'enter your phone',
            suffix: FontAwesomeIcons.phone,
          ),
          CustomFormFiled(
            controller: controller.email,
            validator: (val) {
              return formValidator(val!, 'email', 100, 5);
            },
            labelText: 'email',
            hintText: 'enter your email',
            suffix: FontAwesomeIcons.envelope,
          ),
          GetBuilder<SignupControllerImpl>(
            builder: (controller) => CustomFormFiled(
              controller: controller.password,
              validator: (val) {
                return formValidator(val!, 'password', 100, 8);
              },
              onIconTap: () {
                controller.showPassword();
              },
              obscureText: controller.obscureText,
              labelText: 'password',
              hintText: 'enter your password',
              suffix: controller.passwordSuffix,
            ),
          ),
          const SignupBottomView(),
        ],
      ),
    );
  }
}
