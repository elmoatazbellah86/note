import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/add_not_cubit/cubit/add_note_cubit.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
//import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        //Bloclistener notrebalid
        listener: (context, state) {
          if (state is AddNoteLoding) {}
          if (state is AddNoteFailure) {
            print('fileed ${state.errMessage}');
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing:
                state is AddNoteLoding ? true : false, //عدم التعديل فى البوكس
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                left: 16,
                right: 16,
              ),
              // bottom:MediaQuery.Of(context).ViewInsets.bottom
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
// (state is AddNoteLoding ? true : false)