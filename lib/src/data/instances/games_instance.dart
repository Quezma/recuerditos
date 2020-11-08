import 'package:recuerditos/src/data/model/game_model.dart';

Game cardsGame() => Game(
    name: 'Cartas Pares',
    icon: 'cartasIcon',
    description:
        'Juego de memoria que se debe seleccionar las cartas iguales para completar el juego');
Game questionsGame() => Game(
    name: 'Preguntas y Respuestas',
    icon: 'preguntas',
    description: 'Juego de preguntas de conocimento general');
