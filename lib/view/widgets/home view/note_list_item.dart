import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notebook/data/model/note_model.dart';

import '../../../core/constants/app theme/text_theme.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel, this.onTrashPressed, this.onNoteTap});

  final NoteModel noteModel;
  final void Function()? onTrashPressed;
  final Function()? onNoteTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: InkWell(
        onTap: onNoteTap,
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepPurple,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Text(
                  '${noteModel.noteTitle}',
                  style: FontStyles.font20,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    '${noteModel.noteContent}',
                    style: FontStyles.font18,
                  ),
                ),
                trailing: IconButton(
                  onPressed: onTrashPressed,
                  icon: const Icon(FontAwesomeIcons.trash),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
