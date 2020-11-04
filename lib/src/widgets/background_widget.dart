import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

Widget background() => Center(
      child: SvgPicture.asset(
        'assets/irregularShape.svg',
        fit: BoxFit.cover,
      ),
    );
