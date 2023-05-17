import 'package:flutter/material.dart';
import 'package:flutix_app/main.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  MovieDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
      'assets/images/endgame.jpg',
      width: 200,
      height: 200,
    )
            ),
            SizedBox(height: 16.0),
            Text(
              'Genre: ${movie.genre}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Duration: ${movie.duration}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Overview:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Avengers End Game Melanjutkan Avengers Infinity War dimana kejadian setelah Thanos berhasil mendapatkan semua infinity. '
              'stones dan memusnahkan 50% semua mahluk hidup di alam semesta. Akankah para Avengers berhasil mengalahkan Thanos?. '
              
              ,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

