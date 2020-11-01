import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:recuerditos/src/constants/globalConstants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
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
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        child: Column(
          children: [
            Text(
              'Recuerditos',
              style: title(context),
            ),
            Row(children: [
              Text(
                'Diviertete aprendiendo',
                style: subtitle(context),
                textAlign: TextAlign.start,
              ),
            ])
          ],
        ),
      );
}
