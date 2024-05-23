import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signup();

  toLogin();
}

class SignupControllerImpl extends SignupController {
  @override
  signup() {}

  @override
  toLogin() {}
}
