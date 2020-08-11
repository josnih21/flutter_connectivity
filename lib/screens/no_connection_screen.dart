import 'package:flutter/material.dart';

class NoConnectionScreen extends StatelessWidget {
  const NoConnectionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('connection'),
      ),
      body: Container(
        child: Image.network('https://direct.rhapsody.com/imageserver/images/alb.395484883/500x500.jpg'),
      ),
    );
  }
}
