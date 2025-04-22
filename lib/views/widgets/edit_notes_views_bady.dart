import 'package:flutter/material.dart';
import 'package:note/views/widgets/custum_app_bar.dart';
import 'package:note/views/widgets/custum_text_field.dart';

class EditNotesViewsBady extends StatelessWidget {
  const EditNotesViewsBady({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustumAppBar(titel: 'Note edit ', icon: Icon(Icons.check, size: 35)),
          SizedBox(height: 50),
          CustumTextField(hintText: 'titel'),
          SizedBox(height: 20),
          CustumTextField(hintText: 'content', maxline: 6),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
