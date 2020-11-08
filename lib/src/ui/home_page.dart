import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recuerditos/src/bloc/home/bloc.dart';
import 'package:recuerditos/src/constants/interface_constants.dart';
import 'package:recuerditos/src/data/model/game_model.dart';
import 'package:recuerditos/src/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeBloc = HomeBloc();

  @override
  void dispose() {
    _homeBloc?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _homeBloc,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              background(),
              body(context),
            ],
          ),
        ),
      ),
    );
  }

  void helpRoute() {
    _homeBloc.add(RandomGame(context: context));
  }

  Widget body(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(vertical: 26, horizontal: 17),
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: title(context, 'Recuerditos'),
            ),
            Expanded(
              flex: 1,
              child: subtitle(context, 'Divierte Aprendiendo'),
            ),
            Expanded(
              flex: 1,
              child: description(
                  context, 'Presiona el recuadro del juego que mas te guste'),
            ),
            Expanded(
              flex: 7,
              child: gameList(context),
            ),
            Expanded(
              flex: 2,
              child: button(context, 'Jugar Aleatorio', () => helpRoute()),
            ),
          ],
        ),
      );

  Widget gameList(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 45.0,
          crossAxisSpacing: 58.0,
          childAspectRatio: 0.8,
          children: cardList(context, state),
        );
      },
    );
  }

  List<Widget> cardList(BuildContext context, HomeState state) {
    final List<Game> games = state.games;
    return games
        .map((game) => Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _homeBloc.add(OnClickGame(context: context, id: game.id));
                  },
                  child: Container(
                    width: 145.0,
                    height: 134.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          primaryColor(context),
                          darkPrimary(context),
                        ],
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/${game.icon}.png'),
                        scale: 7.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 9.0,
                ),
                Text('${game.name}',
                    style: bodyTextStyle(context), textAlign: TextAlign.center),
              ],
            ))
        .toList();
  }
}
