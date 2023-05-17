import 'package:flutter/material.dart';
import 'package:flutix_app/main.dart';

import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.blue,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/Aldo.jpg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Aldo Fernando',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Jln Myor Zurbi bustan Kec sukajaya',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '082375363797',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
         SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      '',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
              
                ],
              ),
            ),
          ),

          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman sebelumnya (HomePage)
            },
            child: Text('Kembali'),),
        ],
      ),
    );
  }
}
