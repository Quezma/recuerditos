import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class HomeState extends Equatable {
  final bool isLoading;

  HomeState({@required this.isLoading});

  static HomeState initialState() => HomeState(isLoading: false);

  @override
  List<Object> get props => [isLoading];

  HomeState copyWith({isLoading}) {
    return HomeState(isLoading: isLoading ?? this.isLoading);
  }
}
