import 'package:hive_flutter/adapters.dart';
import 'package:practice_hive3/hive_controller/noteModel.dart'; 
import 'package:hive/hive.dart';

class Boxes {
 static Box<NoteModel> getData() => Hive.box<NoteModel>('note');
}
