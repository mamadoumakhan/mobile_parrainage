// lib/screens/candidat_detail_screen.dart

import 'package:flutter/material.dart';

class CandidatDetailScreen extends StatelessWidget {
  final String name;
  final String image;

  CandidatDetailScreen({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(image),
            Text(name, style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                // Logique pour soumettre le parrainage
              },
              child: Text('Parrainer ce candidat'),
            ),
          ],
        ),
      ),
    );
  }
}
