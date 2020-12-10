import 'package:meta/meta.dart';

class Game {
  int id;
  String name;
  String icon;
  String description;

  Game(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.icon});

  factory Game.fromMap(Map<String, dynamic> map) {
    return Game(
      id: map['id'],
      name: map['name'],
      icon: map['icon'],
      description: map['description'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'icon': icon,
    };
  }
}
