import 'package:flutter/material.dart';

import 'movie_detail_bloc.dart';
export 'movie_detail_bloc.dart';

class MovieDetailBlocProvider extends InheritedWidget {
  final MovieDetailBloc movieDetailBloc;

  MovieDetailBlocProvider({Key key, Widget child})
      : movieDetailBloc = MovieDetailBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(_) {
    return true;
  }

  static MovieDetailBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(MovieDetailBlocProvider)
            as MovieDetailBlocProvider)
        .movieDetailBloc;
  }
}
