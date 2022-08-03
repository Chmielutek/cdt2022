import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart' as sql;

class DBHelper {
  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return await sql.openDatabase(
        path.join(dbPath, 'cdt2022.db'),
        onCreate: (db, version) {
          return db.execute('CREATE TABLE user_favorites(dance_class_id INTEGER PRIMARY KEY, classes_block_id INTEGER, is_favorite INTEGER)');
        },
        version: 3
    );
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    final sqlDb = await DBHelper.database();
    final dbResponse = await sqlDb.insert(table, data, conflictAlgorithm: sql.ConflictAlgorithm.replace);
    print('dbResponse on insert: $dbResponse');
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final sqlDb = await DBHelper.database();
    return sqlDb.rawQuery('Select * from $table');
  }
}
