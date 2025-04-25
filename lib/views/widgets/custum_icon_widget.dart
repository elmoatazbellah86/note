import 'package:flutter/material.dart';

class CustumIconWidget extends StatelessWidget {
  const CustumIconWidget({super.key, required this.icon, this.onPressed});

  final void Function()? onPressed;
  final IconData icon;
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

      child: Center(
        child: IconButton(onPressed: onPressed, icon: Icon(icon, size: 28)),
      ),
    );
  }
}
