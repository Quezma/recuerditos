import 'package:flutter/material.dart';
import 'package:recuerditos/src/constants/globalConstants.dart';

Widget title(BuildContext context, String text) {
  return Text(
    text,
    style: titleStyle(context),
  );
}
