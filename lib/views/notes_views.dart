import 'package:flutter/material.dart';
import 'package:note/views/widgets/add_note_bottom_sheet.dart';
import 'package:note/views/widgets/const_prmimry.dart';
import 'package:note/views/widgets/notes_view_bady_widget.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  // final double fabSize = 56.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, //ظبط الحجم ليتناسب مع الصفحه

      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,

        onPressed: () {
          //  showDialog(context: context, builder: builder)
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: NotesViewBadyWidgets(),
    );
  }
}
