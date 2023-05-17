import 'package:flutter/material.dart';
import 'package:flutix_app/profil.dart';
import 'package:flutix_app/pemesanan.dart';
import 'package:carousel_slider/carousel_slider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutix App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutix App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            CarouselSlider(
        options: CarouselOptions(
          height: 450.0,
        
          enlargeCenterPage: true,
          autoPlay: true,
        ),
        items: [
          Image.asset('assets/images/avengers endgame.jpg', fit: BoxFit.cover),
          Image.asset('assets/images/endgame.jpg', fit: BoxFit.cover),
          Image.asset('assets/images/endgame2.jpg', fit: BoxFit.cover),
          
        ],
      ),
       Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PemesananPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.movie),
                ),
                SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.person),
                ),
SizedBox(width: 20),

                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PemesananPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.theaters),
                ),
              ],
            ),
   ] ),
    
          
            
          
        ),
      );
    
  }
}






class Movie {
  final String title;
  final String genre;
  final String duration;

  Movie({required this.title, required this.genre, required this.duration});
}
