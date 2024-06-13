import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movie_app_final/providers/movie_provider.dart';
import 'package:movie_app_final/models/movie.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var movies = Provider.of<MovieProvider>(context).movies;

    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          Movie movie = movies[index];
          return ListTile(
            leading: Image.asset(
              movie.posterPath,
              width: 50,
            ),
            title: Text(movie.title),
            onTap: () {
              // Detay sayfasına git
            },
          );
        },
      ),
    );
  }
}
