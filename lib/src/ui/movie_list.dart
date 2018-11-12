import 'package:flutter/material.dart';

import '../models/movies/movie.dart';
import '../blocs/movies_bloc.dart';

import 'movie_details.dart';

class MovieList extends StatefulWidget {
  @override
  MovieListState createState() => MovieListState();
}

class MovieListState extends State<MovieList> {
  @override
  void initState() {
    super.initState();
    bloc.fetchAllMovies();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Movies'),
      ),
      body: StreamBuilder(
        stream: bloc.allMovies,
        builder: (context, AsyncSnapshot<MovieData> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<MovieData> snapshot) {
    return GridView.builder(
      itemCount: snapshot.data.results.length,
      itemBuilder: (BuildContext context, int index) {
        return GridTile(
            child: InkResponse(
          enableFeedback: true,
          child: Image.network(
            'https://image.tmdb.org/t/p/w185${snapshot.data.results[index].poster_path}',
            fit: BoxFit.cover,
          ),
          onTap: () => openDetailPage(snapshot.data, index),
        ));
      },
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }

  openDetailPage(MovieData movieData, int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      Movie movie = movieData.results[index];
      return MovieDetail(
        title: movie.title,
        posterUrl: movie.backdrop_path,
        description: movie.overview,
        releaseDate: movie.release_date,
        voteAverage: movie.vote_average.toString(),
        movieId: movie.id,
      );
    }));
  }
}
