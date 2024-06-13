import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:movie_app_final/providers/movie_provider.dart';
import 'package:movie_app_final/screens/movie_detail_page.dart';
import 'package:movie_app_final/models/movie.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var movieProvider = Provider.of<MovieProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Film Tavsiye Uygulaması'),
      ),
      body: ListView.builder(
        itemCount: movieProvider.movies.length,
        itemBuilder: (context, index) {
          Movie movie = movieProvider.movies[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(movie.posterUrl),
            ),
            title: Text(movie.title),
            subtitle: Text(movie.director),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetailPage(movie: movie),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
