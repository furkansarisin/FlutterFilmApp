// lib/movie_list_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movie_app_final/providers/movie_provider.dart';

class MovieListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie List'),
      ),
      body: Consumer<MovieProvider>(
        builder: (context, movieProvider, child) {
          if (movieProvider.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (movieProvider.movies.isEmpty) {
            return Center(child: Text('No movies available'));
          }

          return ListView.builder(
            itemCount: movieProvider.movies.length,
            itemBuilder: (context, index) {
              final movie = movieProvider.movies[index];
              return ListTile(
                leading: Image.network(movie.posterUrl),
                title: Text(movie.title),
                subtitle: Text(movie.director),
              );
            },
          );
        },
      ),
    );
  }
}
