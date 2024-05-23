import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/app routes/get_pages.dart';
import 'core/constants/app theme/theme_data.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
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