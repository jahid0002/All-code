import 'package:hive/hive.dart';
part 'noteModel.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String number;

  NoteModel({
    required this.name,
    required this.number,
  });
}
