import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notebook/core/constants/app_services.dart';

import 'core/app routes/get_pages.dart';
import 'core/constants/app theme/theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await servicesInit();
  runApp(const Notebook());
}

class Notebook extends StatelessWidget {
  const Notebook({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      getPages: pages,
    );
  }
}
