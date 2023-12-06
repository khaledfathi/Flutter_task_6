import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:task_l5/controllers/services/constants/database_constants.dart';

class DatabaseSqlite {
  //required [raw , select(id) , seletWhere , insert , update(id) , updateWhere , delete(id?) , join , joinLeft , joinRight]
  Database? db;
  String _tableName = '';
  int version = 1;

  Future<Database> _connect() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, DATABASE_NAME);
    Database currentDB =
        await openDatabase(path, onCreate: _onCreate, version: 1);
    return currentDB;
  }

  Future<void> _onCreate(Database db, int version) async {
    try {
      for (String table in SCHEMA) {
        await db.execute(table);
      }
      debugPrint("OnCreate : build database [ok]");
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _disconnect() async {
    if (db != null) {
      await db!.close();
      db = null ; 
    }
  }

  Future initDB() async {
    db = db == null ? await _connect() : null;
  }

  Future _dropDatabase() async {
    try {
      await databaseFactory
          .deleteDatabase(join(await getDatabasesPath(), DATABASE_NAME));
      debugPrint("Drop Database : [ok]");
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future recreateDatabase() async {
    await _dropDatabase();
    await _disconnect();
    await initDB();
  }

  DatabaseSqlite table(String table) {
    _tableName = table;
    return this;
  }

  Future<List<Map<String, Object?>>> select({int? id}) {
    if (id == null) {
      return db!.query(_tableName);
    } else {
      return db!.query(_tableName, where: 'id = $id');
    }
  }

  Future<List<Map<String, Object?>>> selectWhere(String where) {
    return db!.query(_tableName, where: where);
  }

  Future<int> insert(Map<String, Object?> row) async {
    return db!.insert(_tableName, row);
  }

  Future<int> update(Map<String, Object?> row, int id) async {
    return db!.update(_tableName, row, where: 'id=$id');
  }

  Future<int> delete({int? id}) async {
    if (id == null) {
      return db!.delete(_tableName);
    }
    return db!.delete(_tableName, where: 'id = $id');
  }
}
