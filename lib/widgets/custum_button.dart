import 'package:flutter/material.dart';
import 'package:note/widgets/const_prmimry.dart';

class CustumButton extends StatelessWidget {
  const CustumButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      //width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      width: MediaQuery.of(context).size.width, //المتاح
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
