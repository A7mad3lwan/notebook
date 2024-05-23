import 'package:get/get.dart';
import 'package:notebook/core/app%20routes/routes.dart';
import 'package:notebook/view/views/auth/login_view.dart';
import 'package:notebook/view/views/auth/signup_view.dart';
import 'package:notebook/view/views/splash_view.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(name: '/', page: () => const SplashView()),
  GetPage(name: AppRoutes.loginView, page: () => const LoginView()),
  GetPage(name: AppRoutes.signupView, page: () => const SignupView()),
];
