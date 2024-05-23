import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:notebook/core/controller/auth/login_controller.dart';
import 'package:notebook/view/widgets/auth/custom_form_filed.dart';

import 'login_top_view.dart';
import 'login_view_bottom.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImpl controller = Get.put(LoginControllerImpl());
    return Form(
      key: controller.formKey,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
        children: [
          const LoginTopView(),
          CustomFormFiled(
            controller: controller.email,
            labelText: 'email',
            hintText: 'enter your email',
            suffix: FontAwesomeIcons.envelope,
          ),
          GetBuilder<LoginControllerImpl>(
            builder: (controller) => CustomFormFiled(
              controller: controller.password,
              obscureText: controller.obscureText,
              labelText: 'password',
              hintText: 'enter your password',
              suffix: controller.passwordSuffix,
              onIconTap: () {
                controller.showPassword();
              },
            ),
          ),
          const LoginBottomView(),
        ],
      ),
    );
  }
}
