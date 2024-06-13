class Movie {
  final String title;
  final String director;
  final double rating;
  final List<String> genres;
  final String plot;
  final String posterUrl;

  Movie({
    required this.title,
    required this.director,
    required this.rating,
    required this.genres,
    required this.plot,
    required this.posterUrl,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      director: json['director'],
      rating: json['rating'].toDouble(),
      genres: List<String>.from(json['genres']),
      plot: json['plot'],
      posterUrl: json['posterUrl'],
    );
  }
}
