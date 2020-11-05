import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:recuerditos/src/constants/interface_constants.dart';
import 'package:recuerditos/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  final List cards = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            background(),
            body(context),
          ],
        ),
      ),
    );
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
              child: button(context, 'Jugar Aleatorio'),
            )
          ],
        ),
      );

  Widget gameList(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 45.0,
      crossAxisSpacing: 58.0,
      childAspectRatio: 0.8,
      children: cardList(context),
    );
  }

  List<Widget> cardList(BuildContext context) {
    return cards
        .map((card) => Column(
              children: [
                Container(
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
                      image: AssetImage('assets/cardsIcon.png'),
                      scale: 7.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 9.0,
                ),
                Text('Nombre ', style: bodyTextStyle(context)),
              ],
            ))
        .toList();
  }
}
