import 'package:flutter/material.dart';
import 'package:note/widgets/const_prmimry.dart';

class CustumTextField extends StatelessWidget {
  const CustumTextField({super.key, required this.hintText, this.maxline = 1});

  final String hintText;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
