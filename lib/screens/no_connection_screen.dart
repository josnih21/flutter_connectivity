import 'package:flutter/material.dart';

class NoConnectionScreen extends StatelessWidget {
  const NoConnectionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' no connection'),
      ),
      body: Container(
          child: Center(
        child: Text(
          'No connection allowed',
          style: TextStyle(fontSize: 40),
        ),
      )),
    );
  }
}
