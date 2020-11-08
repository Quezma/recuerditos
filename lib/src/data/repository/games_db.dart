import 'package:recuerditos/src/data/db/db.dart';
import 'package:recuerditos/src/data/instances/games_instance.dart';
import 'package:recuerditos/src/data/model/game_model.dart';
import 'package:sembast/sembast.dart';

class GameStore {
  GameStore._internal();
  static GameStore _instance = GameStore._internal();
  static GameStore database = _instance;

  Future<Database> get _db async => await DB.instace.database;

  final StoreRef<int, Map<String, dynamic>> _store =
      intMapStoreFactory.store('gameStore');

  Future addGame() async {
    await _store.add(await _db, cardsGame().toMap());
    await _store.add(await _db, questionsGame().toMap());
    print('games inserted');
  }

  Future updateGame(Game game) async {
    final finder = Finder(filter: Filter.byKey(game.id));
    await _store.update(await _db, game.toMap(), finder: finder);
  }

  Future deleteGame(Game game) async {
    final finder = Finder(filter: Filter.byKey(game.id));
    await _store.delete(await _db, finder: finder);
  }

  Future<List<Game>> getAllGames() async {
    final finder = Finder(sortOrders: [SortOrder('id', false)]);
    final snapshot = await _store.find(await _db, finder: finder);
    final getGame = snapshot.map((x) {
      final game = Game.fromMap(x.value);
      game.id = x.key;
      return game;
    }).toList();
    return getGame;
  }
}
