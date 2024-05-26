import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:notebook/core/app%20routes/routes.dart';
import 'package:notebook/core/constants/app_services.dart';

class AppMiddleware extends GetMiddleware {
  AppServices appServices = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (appServices.sharedPreferences.getBool('login') == true) {
      return const RouteSettings(name: AppRoutes.homeView);
    }
    return null;
  }
}
