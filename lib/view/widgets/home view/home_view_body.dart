import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notebook/core/constants/app%20theme/text_theme.dart';
import 'package:notebook/core/controller/home_view_controller.dart';

import 'note_list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewControllerImpl controller = Get.put(HomeViewControllerImpl());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 16),
      child: Column(
        children: [
          FutureBuilder(
            future: controller.getNotes(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data['status'] == 'fail') {
                  return const Center(
                    child: Text(
                      'no notes are found...',
                      style: FontStyles.font20,
                    ),
                  );
                } else {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data['data'].length,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => const NoteItem(),
                    ),
                  );
                }
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: Text(
                    'Loading...',
                    style: FontStyles.font20,
                  ),
                );
              }
              return const Center(
                child: Text(
                  'Loading...',
                  style: FontStyles.font20,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
