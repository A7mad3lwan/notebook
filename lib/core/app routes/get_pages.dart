import 'package:get/get.dart';
import 'package:notebook/view/views/splash_view.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(name: '/', page: () => const SplashView()),
];