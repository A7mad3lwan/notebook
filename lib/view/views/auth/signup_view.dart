import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/auth/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'signup page',
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
        ),
        body: const SignupViewBody(),
      ),
    );
  }
}
