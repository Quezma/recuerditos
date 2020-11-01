import 'package:flutter/material.dart';

Size screenSize(BuildContext context) => MediaQuery.of(context).size;

Color primaryColor(BuildContext context) => Theme.of(context).primaryColor;

Color secondaryColor(BuildContext context) => Theme.of(context).accentColor;

Color darkPrimary(BuildContext context) => Color(0xFF0C475D);

Color gray(BuildContext context) => Color(0x5D5D5D);

TextStyle title(BuildContext context) => Theme.of(context).textTheme.headline1;

TextStyle subtitle(BuildContext context) =>
    Theme.of(context).textTheme.headline2;

TextStyle bodyText(BuildContext context) =>
    Theme.of(context).textTheme.bodyText1;

TextStyle buttonText(BuildContext context) =>
    Theme.of(context).textTheme.button;
