import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:recuerditos/src/bloc/home/bloc.dart';
import 'package:recuerditos/src/data/fixtures/games_fixture.dart';
import 'package:recuerditos/src/data/model/game_model.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  List<Game> games = gamesList();

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
    yield this.state.copyWith(isLoading: true);
    await Future.delayed(Duration(seconds: 4));
    yield this.state.copyWith(isLoading: false, games: games);
  }

  Stream<HomeState> _mapOnCkickGame(OnClickGame event) async* {
    Navigator.pushNamed(event.context, 'help', arguments: event.id);
  }

  Stream<HomeState> _mapRandomGame(RandomGame event) async* {
    games.shuffle();
    Navigator.pushNamed(event.context, 'help', arguments: games.first.id);
  }
}
