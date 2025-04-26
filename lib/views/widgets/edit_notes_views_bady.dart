import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/model/note_model.dart';
//import 'package:note/views/widgets/color_list_view.dart';
import 'package:note/views/widgets/custum_app_bar.dart';
import 'package:note/views/widgets/custum_text_field.dart';
import 'package:note/views/widgets/edit_note_colors_list.dart';

class EditNotesViewsBady extends StatefulWidget {
  const EditNotesViewsBady({super.key, required this.note, this.onPressed});

  final NoteModel note;
  final void Function()? onPressed;

  @override
  State<EditNotesViewsBady> createState() => _EditNotesViewsBadyState();
}

class _EditNotesViewsBadyState extends State<EditNotesViewsBady> {
  String? titel, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustumAppBar(
            onPressed: () {
              widget.note.titel = titel ?? widget.note.titel;
              widget.note.subTitel = content ?? widget.note.subTitel;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes(); //ريفريش
            },
            titel: ' Edit Note ',
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustumTextField(
            onChange: (value) {
              titel = (value);
            },
            hintText: widget.note.titel,
          ),
          SizedBox(height: 20),
          CustumTextField(
            onChange: (value) {
              content = (value);
            },
            hintText: widget.note.subTitel,
            maxline: 6,
          ),
          SizedBox(height: 50),
          EditNoteColorsList(note: widget.note),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

// class CustumIcon extends StatelessWidget {
//   const CustumIcon({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
