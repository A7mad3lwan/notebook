import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:notebook/core/app%20routes/routes.dart';
import 'package:notebook/core/classes/crud.dart';
import 'package:notebook/core/constants/api_links.dart';
import 'package:notebook/core/constants/app_services.dart';

abstract class HomeViewController extends GetxController {
  logout();

  getNotes();

  addNote();

  deleteNote(Map data);
}

class HomeViewControllerImpl extends HomeViewController {
  AppServices appServices = Get.find();
  Crud crud = Crud();

  @override
  addNote() {}

  @override
  deleteNote(Map data) async {
    var response = await crud.postRequest(deleteNoteLink, data);
    if (response['status'] == 'success') {
      Get.offAllNamed(AppRoutes.homeView);
    } else {
      if (kDebugMode) {
        print('fail');
      }
    }
  }

  @override
  getNotes() async {
    var response = await crud.postRequest(
        viewNoteLink, {'id': appServices.sharedPreferences.getString('id')});
    return response;
  }

  @override
  logout() {
    appServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoutes.loginView);
  }
}
