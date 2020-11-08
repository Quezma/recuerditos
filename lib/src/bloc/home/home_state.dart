import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:recuerditos/src/data/model/game_model.dart';

class HomeState extends Equatable {
  final bool isLoading;
  final List<Game> games;

  @override
  List<Object> get props => [isLoading, games];

  HomeState({@required this.isLoading, this.games});

  static HomeState initialState() => HomeState(isLoading: false, games: []);

  HomeState copyWith({isLoading, games}) {
    return HomeState(
        isLoading: isLoading ?? this.isLoading, games: games ?? this.games);
  }
}
