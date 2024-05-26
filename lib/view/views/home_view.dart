import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:notebook/core/constants/app%20theme/text_theme.dart';
import 'package:notebook/core/controller/home_view_controller.dart';
import 'package:notebook/view/widgets/home%20view/home_view_body.dart';

import '../widgets/home view/bottom_sheet.dart';

class HomeView extends GetView<HomeViewControllerImpl> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: FontStyles.font20,
          ),
          actions: [
            IconButton(
              onPressed: () {
                controller.logout();
              },
              icon: const Icon(FontAwesomeIcons.arrowRightFromBracket),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              context: context,
              builder: (context) => const CustomBottomSheet(),
            );
          },
          child: const Icon(
            FontAwesomeIcons.pencil,
          ),
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}



