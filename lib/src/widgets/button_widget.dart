import 'package:flutter/material.dart';
import 'package:recuerditos/src/constants/interface_constants.dart';

Widget button(BuildContext context, String text, Function funcion) => Center(
      child: SizedBox(
        width: 196.0,
        height: 56.0,
        child: RaisedButton(
          onPressed: funcion,
          shape: StadiumBorder(),
          child: Text(
            text,
            style: buttonTextStyle(context),
          ),
        ),
      ),
    );
