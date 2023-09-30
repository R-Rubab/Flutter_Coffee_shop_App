// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:badges/badges.dart';
// import 'package:provider/provider.dart';

import 'package:flutter_application_3/model/modelitems.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'package:path/path.dart';

class DBHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDatabase();
    return null;
  }

  initDatabase() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'itemName.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE ItemName(coffeename VARCHAR  ,price VARCHAR,urlimg VARCHAR)');
  }

  Future<ItemNames> insert(ItemNames itemName) async {
    var dbClient = await db;
    await dbClient!.insert('ItemName', itemName.toMap());
    return itemName;
  }
}
