import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note/cubits/add_not_cubit/cubit/add_note_cubit.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/widgets/const_prmimry.dart';
import 'package:note/views/widgets/custum_button.dart';
import 'package:note/views/widgets/custum_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? titel, supTitel;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 38),
          CustumTextField(
            hintText: 'Titel',
            onSaved: (value) {
              titel = value;
            },
          ),
          SizedBox(height: 22),
          CustumTextField(
            hintText: 'des',
            maxline: 5,
            onSaved: (value) {
              supTitel = value;
            },
          ),
          SizedBox(height: 50),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustumButton(
                isLoding: state is AddNoteLoding ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate = DateFormat(
                      'dd-mm-yyyy',
                    ).format(currentDate);

                    var notModel = NoteModel(
                      titel: titel!,
                      subTitel: supTitel!,
                      date: formattedCurrentDate,
                      color: kColors.length,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(notModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
