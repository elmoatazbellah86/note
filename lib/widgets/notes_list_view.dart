import 'package:flutter/material.dart';
import 'package:note/widgets/not_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});
  final date = const [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: const NotItem(),
          );
        },
      ),
    );
  }
}
