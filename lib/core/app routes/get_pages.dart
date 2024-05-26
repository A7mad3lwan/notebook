import 'package:get/get.dart';
import 'package:notebook/core/app%20routes/routes.dart';
import 'package:notebook/core/middleware/app_middleware.dart';
import 'package:notebook/view/views/auth/login_view.dart';
import 'package:notebook/view/views/auth/signup_view.dart';
import 'package:notebook/view/views/edit_note.dart';
import 'package:notebook/view/views/splash_view.dart';

import '../../view/views/home_view.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(name: '/', page: () => const SplashView()),
  GetPage(
    name: AppRoutes.loginView,
    page: () => const LoginView(),
    middlewares: [
      AppMiddleware(),
    ],
  ),
  GetPage(name: AppRoutes.signupView, page: () => const SignupView()),
  GetPage(name: AppRoutes.homeView, page: () => const HomeView()),
  GetPage(name: AppRoutes.editeNote, page: () => const EditNote()),
];
