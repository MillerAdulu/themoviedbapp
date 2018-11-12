import 'package:flutter/material.dart';

import 'package:imdbapp/src/utils/routes.dart';
import 'ui/movie_list.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Movie DB',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: MovieList(),
      ),
      routes: routes,
    );
  }
}