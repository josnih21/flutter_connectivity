import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:connectivity_flutter_pet_project/screens/connection_screen.dart';
import 'package:connectivity_flutter_pet_project/screens/no_connection_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final GlobalKey<NavigatorState> navigator = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamSubscription connectivitySubscription;

  ConnectivityResult _previousResult;

  @override
  void initState() {
    super.initState();
    connectivitySubscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult connectivityResult) {
      if (connectivityResult == ConnectivityResult.none) {
        navigator.currentState.push(
          MaterialPageRoute(builder: (BuildContext context) => NoConnectionScreen()),
        );
      } else if (_previousResult == ConnectivityResult.none) {
        navigator.currentState.push(
          MaterialPageRoute(builder: (BuildContext context) => ConnectionScreen()),
        );
      }

      _previousResult = connectivityResult;
    });
  }

  @override
  void dispose() {
    super.dispose();
    connectivitySubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigator,
      home: ConnectionScreen(),
    );
  }
}
