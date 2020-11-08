import 'package:bloc/bloc.dart';
import 'package:recuerditos/src/bloc/home/bloc.dart';
import 'package:recuerditos/src/data/model/game_model.dart';
import 'package:recuerditos/src/data/repository/games_db.dart';
import 'package:flutter/material.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initialState()) {
    add(OnLoad());
  }
  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is OnLoad) {
      yield* _mapOnLoad();
    } else if (event is OnClickGame) {
      yield* _mapOnCkickGame(event);
    } else if (event is RandomGame) {
      yield* _mapRandomGame(event);
    }
  }

  Stream<HomeState> _mapOnLoad() async* {
    List<Game> _games = await GameStore.database.getAllGames();

    if (_games.length == 0) {
      yield this.state.copyWith(isLoading: true);
      await GameStore.database.addGame();
      yield this.state.copyWith(isLoading: false);
    }

    List<Game> games = await GameStore.database.getAllGames();
    yield this.state.copyWith(isLoading: true, games: games);
  }

  Stream<HomeState> _mapOnCkickGame(OnClickGame event) async* {
    Navigator.pushNamed(event.context, 'help', arguments: event.id);
  }

  Stream<HomeState> _mapRandomGame(RandomGame event) async* {
    final games = await GameStore.database.getAllGames();
    games.shuffle();
    Navigator.pushNamed(event.context, 'help', arguments: games.first.id);
  }
}
