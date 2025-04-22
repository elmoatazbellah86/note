import 'package:flutter/material.dart';
import 'package:note/views/widgets/custum_search_icon_widget.dart';

class CustumAppBar extends StatelessWidget {
  const CustumAppBar({super.key, required this.titel, required this.icon});
  final String titel;
  final Icon icon;
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
        CustumSearchIconWidget(icon: icon),
      ],
    );
  }
}
