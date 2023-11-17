import 'dart:io';


import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static const dbName = 'myDatabase.db';
  static const dbVersion = 1;
  static const dbTable = 'myTable';
  static const dbColumnId = 'id';
  static const dbColumnName = 'name';

  final DatabaseHelper instance = DatabaseHelper();

  late Database? _database;
  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await initDB();
    return null;
  }

  initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, dbTable);
    return await openDatabase(path, version: dbVersion, onCreate: Create);
  }

  Future Create(Database db, int id) async {
    db.execute('''
      CREATE TABLE $dbTable(
         $dbColumnId INTEGER PRIMARY KEY, 
         $dbColumnName TEXT NOT NULL

      )
      
      ''');
  }

  Insert(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db!.insert(dbTable, row);
  }

  Future<List<Map<String, dynamic>>> Read() async {
    Database? db = await instance.database;
    return await db!.query(dbTable);
  }

  Update(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    int id = row[dbColumnId];
    return await db!
        .update(dbTable, row, where: '$dbColumnId = ? ', whereArgs: [id]);
  }

  Delete(int id) async {
    Database? db = await instance.database;
    return await db!.delete(dbTable, where: '$dbColumnId = ?', whereArgs: [id]);
  }
}
 