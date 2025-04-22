import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/model/note_model.dart';
import 'package:note/simple_bloc_observer.dart';
import 'package:note/views/notes_views.dart';
import 'package:note/views/widgets/const_prmimry.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(NotesAPP());
}

class NotesAPP extends StatelessWidget {
  const NotesAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
          // scaffoldBackgroundColor: Colors.black26,
        ),
        home: NotesViews(),
      ),
    );
  }
}

// MultiBlocProvider(//رئيسى
//       providers: [
//         BlocProvider(
//           create: (context) => AddNoteCubit(),
//           // child: Container(),
//         ),
//       ],)return MaterialApp(
