import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:yoga/dataClass/yogaModel.dart';

class YogaDatabase {
  final YogaDatabase instance = YogaDatabase.init();
  static Database? _database;
  YogaDatabase.init();

  Future<Database> initDB(String file_path) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, file_path);
    return await openDatabase(path, version: 1, onCreate: _OnCreate);
  }

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDB('Yoga Database');
    return _database;
  }

 

  Future _OnCreate(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLIEAN NOT NULL';

    await db.execute('''

CREAT TABLE BeginnerYoga{
  ${YogaModel.IDName} $idType; 
  ${YogaModel.yogaName} $textType; 
  ${YogaModel.secondOrNot} $boolType; 
  ${YogaModel.imageName} $textType;
}

''');
  }
}
