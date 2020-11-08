import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  build(BuildContext context) {
    final _params = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Center(
        child: Text('ID del juego: $_params'),
      ),
    );
  }
}
