import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class DB {
  DB._internal();
  static DB _instace = DB._internal();
  static DB get instace => _instace;

  Database _database;

  Future<Database> get database async {
    if (_database == null) {
      _database = await _openDatabase();
    }

    return _database;
  }

  Future<Database> _openDatabase() async {
    final directory = await getApplicationDocumentsDirectory();
    final dbPath = join(directory.path, 'recuerditos.db');
    final db = await databaseFactoryIo.openDatabase(dbPath);
    return db;
  }

  Future<void> dbClose() async {
    await this._database.close();
  }
}
