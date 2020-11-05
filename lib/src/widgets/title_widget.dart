import 'package:flutter/material.dart';
import 'package:recuerditos/src/constants/interface_constants.dart';

Widget title(BuildContext context, String text) {
  return Text(
    text,
    style: titleStyle(context),
  );
}
