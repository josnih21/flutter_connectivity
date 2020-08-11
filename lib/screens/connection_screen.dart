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
            child: Text(
          'Connection allowed',
          style: TextStyle(fontSize: 40),
        )),
      ),
    );
  }
}
