import 'package:bloc/bloc.dart';
import 'package:recuerditos/src/bloc/home/bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initialState());
  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is OnLoad) {
      yield this.state.copyWith(isLoading: true);
    }
  }
}
