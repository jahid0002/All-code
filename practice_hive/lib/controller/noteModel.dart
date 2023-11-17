import 'package:hive/hive.dart';
part 'noteModel.g.dart';

@HiveType(typeId: 0)
class NoteModel {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String schoolName;

  @HiveField(3)
  bool? cheak;

  NoteModel({
    required this.id,
    required this.name,
    required this.schoolName,
    this.cheak = false,
  });
}
