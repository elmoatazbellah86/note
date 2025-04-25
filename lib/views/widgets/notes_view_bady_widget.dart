import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/notes_cubit/notes_cubit.dart';
import 'package:note/views/widgets/custum_app_bar.dart';
import 'package:note/views/widgets/notes_list_view.dart';

class NotesViewBadyWidgets extends StatefulWidget {
  const NotesViewBadyWidgets({super.key});

  @override
  State<NotesViewBadyWidgets> createState() => _NotesViewBadyWidgetsState();
}

class _NotesViewBadyWidgetsState extends State<NotesViewBadyWidgets> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustumAppBar(titel: 'Note Mizo', icon: Icons.search),
          SizedBox(height: 50),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}



// Expanded(
//             child: ListView(
//               children: [
//                 NotItem(),
//                 SizedBox(height: 50),
//                 NotItem(),
//                 SizedBox(height: 50),
//               ],
//             ),
//           ),