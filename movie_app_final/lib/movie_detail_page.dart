// lib/screens/movie_detail_page.dart

import 'package:flutter/material.dart';
import 'package:movie_app_final/models/movie.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie movie; // movie parametresini burada tanımladık

  const MovieDetailPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title), // Film başlığını app bar'a ekliyoruz
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              movie.posterPath,
              width: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Director: ${movie.director}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Genre: ${movie.genre}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Rating: ${movie.rating.toString()}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                movie.plot,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
