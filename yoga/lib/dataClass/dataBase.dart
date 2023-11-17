import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class DatabaseHelper {
  static const dbName = 'myDatabase.db';
  static const dbVersion = 1;
  static const dbTable = 'myTable';
  static const columnId = 'id';
  static const columnName = 'name';
  static final DatabaseHelper instance = DatabaseHelper();

   late Database? _database;
  Future<Database?> get database async {
    // ignore: unnecessary_null_comparison
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, dbName);
    return await openDatabase(path, version: dbVersion, onCreate: OnCreate);
  }

  // ignore: non_constant_identifier_names
  Future OnCreate(Database database, int version) async {
    database.execute('''

          CREATE TABLE $dbTable(
            $columnId INTEGER PRIMARY KEY, 
            $columnName TEXT NOT NULL
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
    int id = row[columnId];
    return await db!
        .update(dbTable, row, where: '$columnId = ? ', whereArgs: [id]);
  }

  Delete(int id) async {
    Database? db = await instance.database;
    return await db!.delete(dbTable, where: '$columnId = ?', whereArgs: [id]);
  } 

  
}


