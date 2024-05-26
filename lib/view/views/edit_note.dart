import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:notebook/core/app%20routes/routes.dart';
import 'package:notebook/core/constants/app%20theme/text_theme.dart';

import '../../core/classes/crud.dart';
import '../../core/constants/api_links.dart';
import '../widgets/auth/custom_button.dart';
import '../widgets/auth/custom_form_filed.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, this.note});

  final Map? note;

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

  Crud crud = Crud();

  @override
  void initState() {
    title.text = widget.note!['note_title'];
    content.text = widget.note!['note_content'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'edit note',
            style: FontStyles.font20,
          ),
          leading: IconButton(
            onPressed: () {
              Get.offAllNamed(AppRoutes.homeView);
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
        ),
        body: Form(
          key: formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
            physics: const BouncingScrollPhysics(),
            children: [
              CustomFormFiled(
                controller: title,
                labelText: 'note title',
                hintText: 'enter note title',
                suffix: FontAwesomeIcons.noteSticky,
              ),
              const SizedBox(height: 25),
              TextField(
                controller: content,
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
              const SizedBox(height: 40),
              CustomButton(
                onPressed: () async {
                  await editNote();
                },
                btnText: 'save',
              ),
            ],
          ),
        ),
      ),
    );
  }

  editNote() async {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      var response = await crud.postRequest(editNoteLink, {
        'note_id': widget.note!['note_id'].toString(),
        'note_title': title.text,
        'note_content': content.text,
      });
      if (response['status'] == 'success') {
        Get.offAllNamed(AppRoutes.homeView);
      } else {
        if (kDebugMode) {
          print('edite fail');
        }
      }
    } else {
      if (kDebugMode) {
        print('not valid data!');
      }
    }
  }
}
