

import 'package:hive/hive.dart';
import 'package:practice_hive2/controller%20&%20model/noteModel.dart';

class Boxes {


static Box<NoteModel> getData() => Hive.box<NoteModel>('note'); 

}