import 'package:flutter/material.dart';
import 'package:recuerditos/src/ui/help_page.dart';
import 'package:recuerditos/src/ui/home_page.dart';
import 'package:recuerditos/src/ui/score_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matrial App',
      theme: ThemeData(
        primaryColor: Color(0x4190CB),
        buttonColor: Color(0xDBB514),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Color(0x5D5D5D),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'help': (BuildContext context) => HelpPage(),
        'score': (BuildContext context) => ScorePage(),
      },
    );
  }
}
