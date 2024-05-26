import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notebook/core/controller/home_view_controller.dart';

import '../auth/custom_button.dart';
import '../auth/custom_form_filed.dart';

class CustomBottomSheet extends GetView<HomeViewControllerImpl> {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15),
      child: Column(
        children: [
          CustomFormFiled(
            controller: controller.noteTitle,
            labelText: 'note title',
            hintText: 'enter note title',
          ),
          const SizedBox(height: 15),
          TextField(
            controller: controller.noteContent,
            maxLines: 5,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.white),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.white),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.white),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              label: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text('note content'),
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              onPressed: () {
                controller.addNote();
              },
              btnText: 'save',
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
