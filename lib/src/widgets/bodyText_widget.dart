import 'package:flutter/material.dart';
import 'package:recuerditos/src/constants/interface_constants.dart';

Widget description(BuildContext context, String text) {
  return Row(
    children: [
      Flexible(
        child: Text(
          text,
          style: bodyTextStyle(context),
          textAlign: TextAlign.start,
        ),
      ),
    ],
  );
}
