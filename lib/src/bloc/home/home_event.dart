import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

abstract class HomeEvent {}

class OnLoad extends HomeEvent {}

class OnClickGame extends HomeEvent {
  BuildContext context;
  int id;

  OnClickGame({@required this.context, @required this.id});
}

class RandomGame extends HomeEvent {
  BuildContext context;

  RandomGame({@required this.context});
}
