import 'package:hive_flutter/hive_flutter.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String titel;
  @HiveField(1)
  final String subTitel;
  @HiveField(2)
  final String time;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.titel,
    required this.subTitel,
    required this.time,
    required this.color,
  });
}
