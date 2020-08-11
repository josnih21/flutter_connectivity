import 'package:connectivity_flutter_pet_project/screens/connect_screen_secondary.dart';
import 'package:flutter/material.dart';

class ConnectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connection screen'),
      ),
      body: Container(
        child: Center(
            child: FlatButton(
          child: Text('change screen'),
          onPressed: () => Navigator.of(context).pushNamed('screen2'),
        )),
      ),
    );
  }
}
