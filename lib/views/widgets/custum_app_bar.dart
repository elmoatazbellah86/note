import 'package:flutter/material.dart';
import 'package:note/views/widgets/custum_icon_widget.dart';

class CustumAppBar extends StatelessWidget {
  const CustumAppBar({
    super.key,
    required this.titel,
    required this.icon,
    this.onPressed,
  });
  final String titel;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            titel,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        Spacer(),
        CustumIconWidget(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
