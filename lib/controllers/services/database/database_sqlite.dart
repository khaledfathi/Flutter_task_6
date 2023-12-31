import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:task_l5/controllers/services/constants/database_constants.dart';
import 'package:task_l5/controllers/services/database/interface/database_core.dart';

class DatabaseSqlite implements DatabaseCore<DatabaseSqlite>{
  //required [raw , select(id) , seletWhere , insert , update(id) , updateWhere , delete(id?) , join , joinLeft , joinRight]
  
  Database? db;
  String _tableName = '';
  int _version = 1;

  Future<Database> _connect() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, DATABASE_NAME);
    Database currentDB =
        await openDatabase(path, onCreate: _onCreate, version: _version);
    return currentDB;
  }

  Future<void> _onCreate(Database db, int version) async {
    try {      
      for (String table in SCHEMA) {
        await db.execute(table);
      }
      debugPrint("DatabaseSqlite : build database [ok]");
    } catch (e) {
      debugPrint('DatabaseSqlite : ${e.toString()}');
    }
  }

  Future<void> _disconnect() async {
    if (db != null) {
      await db!.close();
      db = null ; 
    }
  }

  @override
  Future<void> initDB() async {
    db = db == null ? await _connect() : null;
  }

  Future<void> _dropDatabase() async {
    try {
      await databaseFactory
          .deleteDatabase(join(await getDatabasesPath(), DATABASE_NAME));
      debugPrint("DatabaseSqlite: Drop Database : [ok]");
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<void> recreateDatabase() async {
    await _dropDatabase();
    await _disconnect();
    await initDB();
  }

  @override
  DatabaseSqlite table(String table) {
    _tableName = table;
    return this;
  }

  @override
  Future<List<Map<String, Object?>>> select({int? id}) {
    if (id == null) {
      return db!.query(_tableName);
    } else {
      return db!.query(_tableName, where: 'id = $id');
    }
  }

  @override
  Future<List<Map<String, Object?>>> selectWhere(String where) {
    return db!.query(_tableName, where: where);
  }

  @override
  Future<int> insert(Map<String, Object?> row) async {
    return db!.insert(_tableName, row);
  }

  @override
  Future<int> update(Map<String, Object?> row, int id) async {
    return db!.update(_tableName, row, where: 'id=$id');
  }

  @override
  Future<int> delete({int? id}) async {
    if (id == null) {
      return db!.delete(_tableName);
    }
    return db!.delete(_tableName, where: 'id = $id');
  }
}
