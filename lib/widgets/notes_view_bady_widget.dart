import 'package:flutter/material.dart';
import 'package:note/views/widgets/custum_app_bar.dart';
import 'package:note/widgets/notes_list_view.dart';

class NotesViewBadyWidgets extends StatelessWidget {
  const NotesViewBadyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustumAppBar(titel: 'Note eidt', icon: Icon(Icons.search, size: 35)),
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