import 'package:recuerditos/src/data/model/game_model.dart';

List<Game> gamesList() => [
      Game(
          id: 1,
          name: 'Cartas Pares',
          icon: 'cartasIcon',
          description:
              'Juego de memoria que se debe seleccionar las cartas iguales para completar el juego'),
      Game(
          id: 2,
          name: 'Otro Juego',
          icon: 'preguntas',
          description: 'Juego de preguntas de conocimento general'),
    ];
