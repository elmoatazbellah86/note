import 'package:flutter/material.dart';
import 'package:note/widgets/add_note_bottom_sheet.dart';
import 'package:note/widgets/const_prmimry.dart';
import 'package:note/widgets/notes_view_bady_widget.dart';

class NotesViews extends StatefulWidget {
  const NotesViews({super.key});

  // final double fabSize = 56.0;

  @override
  State<NotesViews> createState() => _NotesViewsState();
}

class _NotesViewsState extends State<NotesViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBadyWidgets(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,

        onPressed: () {
          //   showDialog(context: context, builder: builder)
          showModalBottomSheet(
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
    );
  }
}
