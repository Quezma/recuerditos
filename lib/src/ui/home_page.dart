import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:recuerditos/src/constants/globalConstants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  final List cards = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background(),
          body(context),
        ],
      ),
    );
  }

  Widget background() => Center(
        child: SvgPicture.asset(
          'assets/irregularShape.svg',
          fit: BoxFit.cover,
        ),
      );
  Widget body(BuildContext context) => Container(
        padding:
            EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0, bottom: 10.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: titleHome(context),
            ),
            Expanded(
              flex: 1,
              child: subtitleHome(context),
            ),
            Expanded(
              flex: 1,
              child: descriptionHome(context),
            ),
            Expanded(
              flex: 7,
              child: gameList(context),
            ),
            Flexible(
              flex: 1,
              child: buttonHome(context),
            ),
          ],
        ),
      );

  Widget titleHome(BuildContext context) {
    return Text(
      'Recuerditos',
      style: title(context),
    );
  }

  Widget subtitleHome(BuildContext context) {
    return Row(children: [
      Text(
        'Diviertete aprendiendo',
        style: subtitle(context),
        textAlign: TextAlign.start,
      ),
    ]);
  }

  Widget descriptionHome(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            'Presiona el recuadro del juego que mas te guste',
            style: subtitle(context),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }

  Widget gameList(BuildContext context) {
    return Wrap(
      children: cardList(context),
    );
  }

  Widget buttonHome(BuildContext context) => SizedBox(
        width: screenSize(context).width * 0.45,
        height: screenSize(context).height * 0.1,
        child: RaisedButton(
          onPressed: () {},
          shape: StadiumBorder(),
          child: Text(
            'Jugar Aleatorio',
            style: buttonText(context),
          ),
        ),
      );

  List<Widget> cardList(BuildContext context) {
    return cards
        .map((card) => Container(
              margin: EdgeInsets.all(10.0),
              width: 130.0,
              height: 130.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
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
            ))
        .toList();
  }
}
