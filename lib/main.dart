import 'package:flutter/material.dart';

import 'utils/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akedu',
      home: Scaffold(
        appBar: AppBar(title: Text('IDMB App')),
        // body: Center(child: )  Initial page to load here
      ),
      routes: routes,
    );
  }
}
