import 'package:flutter/material.dart';
import 'package:note/views/widgets/const_prmimry.dart';

class CustumButton extends StatelessWidget {
  const CustumButton({super.key, this.onTap, this.isLoding = false});
  final void Function()? onTap;
  final bool isLoding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        //width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        width: MediaQuery.of(context).size.width, //المتاح
        child: Center(
          child:
              isLoding
                  ? CircularProgressIndicator(color: Colors.black)
                  : Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
        ),
      ),
    );
  }
}
