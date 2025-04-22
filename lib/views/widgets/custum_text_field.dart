import 'package:flutter/material.dart';
import 'package:note/views/widgets/const_prmimry.dart';

class CustumTextField extends StatelessWidget {
  const CustumTextField({
    super.key,
    required this.hintText,
    this.maxline = 1,
    this.onSaved,
  });

  final String hintText;
  final int maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Filed is required';
        } else {
          return null;
        }
      },
      maxLines: maxline,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,

        hintStyle: TextStyle(color: kPrimaryColor),
        border: BuildLineBorder(),
        enabledBorder: BuildLineBorder(),
        focusedBorder: BuildLineBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder BuildLineBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
