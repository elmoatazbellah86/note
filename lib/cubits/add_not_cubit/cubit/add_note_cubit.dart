import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note/model/note_model.dart';
import 'package:note/views/widgets/const_prmimry.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  //bool isLoding = false;
  // Color color = const Color(0xffAC3931);

  addNote(NoteModel note) async {
    //note.color = color.value;
    emit(AddNoteLoding());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      //  isLoding = false;
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      //   isLoding = false;
      emit(AddNoteFailure(e.toString()));
    }
  }
}
