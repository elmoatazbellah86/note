import 'package:flutter/material.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/widgets/edit_notes_views_bady.dart';

class EditNotesViews extends StatelessWidget {
  const EditNotesViews({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNotesViewsBady(note: note));
  }
}
