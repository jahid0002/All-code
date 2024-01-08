





import 'package:hive_flutter/adapters.dart'; 
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel {
  @HiveField(0)
  String name; 
  @HiveField(1)
  String id; 
  @HiveField(2)
  String diperment;
  NoteModel({required this.name, required this.id, required this.diperment});
}
