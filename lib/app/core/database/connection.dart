import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection {
  Database? database;

  Future<Database?> connect() async {
    WidgetsFlutterBinding.ensureInitialized();
    this.database = await openDatabase(join(await getDatabasesPath(), 'card_database.db'),
        onCreate: (db, version) => db.execute('create table card('
            'id TEXT PRIMARY KEY, '
            'name TEXT, '
            'text TEXT,'
            'manaCost TEXT,'
            'type TEXT,'
            'colors TEXT,'
            'power TEXT,'
            'toughness TEXT,'
            'imageUrl TEXT)'),
        version: 1,
        singleInstance: true);

    return this.database;
  }
}
