import 'package:flutter/material.dart';

class CustumSearchIconWidget extends StatelessWidget {
  const CustumSearchIconWidget({super.key, required this.icon});

  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(Colors.white.value).withOpacity(0.08),

        // color: Colors.white.withOpacity(0.07)
      ),
      height: 45,
      width: 45,

      child: Center(child: icon),
    );
  }
}
