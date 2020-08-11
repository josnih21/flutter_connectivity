import 'package:flutter/material.dart';

class ConnectionScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connection screen 2'),
      ),
      body: Container(
        child: Center(
            child: Text(
          'Transition done',
          style: TextStyle(fontSize: 40),
        )),
      ),
    );
  }
}
