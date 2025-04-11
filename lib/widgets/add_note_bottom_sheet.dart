import 'package:flutter/material.dart';
import 'package:note/widgets/custum_button.dart';
import 'package:note/widgets/custum_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 38),
            CustumTextField(hintText: 'Titel'),
            SizedBox(height: 22),
            CustumTextField(hintText: 'des', maxline: 5),
            SizedBox(height: 50),
            CustumButton(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
