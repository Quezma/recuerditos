import 'package:flutter/material.dart';
import 'package:recuerditos/src/constants/globalConstants.dart';

Widget subtitle(BuildContext context, String text) {
  return Row(children: [
    Text(
      text,
      style: subtitleStyle(context),
      textAlign: TextAlign.start,
    ),
  ]);
}
