import 'package:flutter/material.dart';
import 'package:flutix_app/main.dart';
import 'package:flutix_app/movie_detail_screen.dart';


class PemesananPage extends StatelessWidget {
 final List<Movie> movies = [
    Movie(title: 'Avengers: Endgame', genre: 'Action', duration: '2 hr 30 min'),
    Movie(title: 'Black Panther', genre: 'Action', duration: '2 hr 15 min'),
    Movie(title: 'Inception', genre: 'Sci-Fi', duration: '2 hr 28 min'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie List'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(movies[index].title),
            subtitle: Text('${movies[index].genre} - ${movies[index].duration}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovieDetailScreen(movie: movies[index]),

                  
                ),
              );
              
            },
          );
        },
      ),
      
    );




    
  }
}
