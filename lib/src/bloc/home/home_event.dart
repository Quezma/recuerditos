import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

abstract class HomeEvent {}

class OnLoad extends HomeEvent {}

class ChangeRoute extends HomeEvent {
  BuildContext context;

  ChangeRoute({@required this.context});
}
