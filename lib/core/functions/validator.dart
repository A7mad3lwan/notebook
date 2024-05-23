import 'package:get/get.dart';

formValidator(String val, String type, int max, int min) {
  if (val.isEmpty) {
    return 'required data!';
  }

  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return 'not valid username!';
    }
  }

  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return 'not valid phone!';
    }
  }

  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return 'not valid email!';
    }
  }

  if (val.length > max) {
    return 'data should be less than $max digits!';
  }

  if (val.length < min) {
    return 'data should be more than $min digits!';
  }
}
