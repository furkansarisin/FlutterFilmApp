// movie_provider.dart dosyası
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app_final/models/movie.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> _movies = [];
  bool _isLoading = false;

  List<Movie> get movies => _movies;
  bool get isLoading => _isLoading;

  Future<void> fetchMovies() async {
    try {
      _isLoading = true;
      notifyListeners();

      final Uri url = Uri.parse('https://mocki.io/v1/5f3633cc-5116-4b11-89d7-d21f17ce4735');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<Movie> loadedMovies = [];
        final List<dynamic> responseData = json.decode(response.body);

        responseData.forEach((movieData) {
          loadedMovies.add(Movie(
            title: movieData['title'],
            director: movieData['director'],
            rating: double.parse(movieData['rating'].toString()),
            genres: List<String>.from(movieData['genres']),
            plot: movieData['plot'],
            posterUrl: movieData['posterUrl'],
          ));
        });

        _movies = loadedMovies;
      } else {
        throw Exception('Failed to load movies');
      }
    } catch (error) {
      print(error);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
