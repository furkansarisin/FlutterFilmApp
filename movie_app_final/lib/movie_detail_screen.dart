import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  final Map<String, dynamic> movie;

  MovieDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie['title']),
        automaticallyImplyLeading: true,
        leading: BackButton(
          color: Colors.white, // Geri butonunun rengi
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              movie['posterUrl'] != null && movie['posterUrl'].isNotEmpty
                  ? Image.network(
                      movie['posterUrl'],
                      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        } else {
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                  : null,
                            ),
                          );
                        }
                      },
                      errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                        return Text('Failed to load image');
                      },
                    )
                  : Container(),
              SizedBox(height: 16),
              Text(
                movie['title'],
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Director: ${movie['director']}'),
              SizedBox(height: 8),
              Text('Rating: ${movie['rating']}'),
              SizedBox(height: 8),
              Text('Genres: ${movie['genres'].join(', ')}'),
              SizedBox(height: 8),
              Text('Plot: ${movie['plot'] ?? 'Plot not available'}'),
            ],
          ),
        ),
      ),
    );
  }
}
