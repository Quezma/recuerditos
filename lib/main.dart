import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recuerditos/src/ui/help_page.dart';
import 'package:recuerditos/src/ui/home_page.dart';
import 'package:recuerditos/src/ui/score_page.dart';

import 'src/data/db/db.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DB.instace.database;
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Matrial App',
      theme: ThemeData(
        primaryColor: Color(0xff4190CB),
        accentColor: Color(0xffDBB514),
        buttonColor: Color(0xffDBB514),
        textTheme: TextTheme(
          button: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
          headline1: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: Color(0xff5D5D5D),
          ),
          headline2: TextStyle(
            fontSize: 20,
            color: Color(0xff5D5D5D),
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            color: Color(0xff5D5D5D),
            fontWeight: FontWeight.w400,
          ),
        ),
        scaffoldBackgroundColor: Color(0xFFf8f8f8),
      ),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'help': (BuildContext context) => HelpPage(),
        'score': (BuildContext context) => ScorePage(),
      },
    );
  }
}
