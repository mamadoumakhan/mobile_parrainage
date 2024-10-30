// lib/screens/candidat_list_screen.dart

import 'package:flutter/material.dart';
import '../models/candidat.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CandidatListScreen extends StatefulWidget {
  @override
  _CandidatListScreenState createState() => _CandidatListScreenState();
}

class _CandidatListScreenState extends State<CandidatListScreen> {
  late Future<List<Candidat>> futureCandidats;

  Future<List<Candidat>> fetchCandidats() async {
    final response = await http.get(Uri.parse('https://votre-api.com/candidats'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((candidat) => Candidat.fromJson(candidat)).toList();
    } else {
      throw Exception('Failed to load candidats');
    }
  }

  @override
  void initState() {
    super.initState();
    futureCandidats = fetchCandidats();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Candidats'),
      ),
      body: FutureBuilder<List<Candidat>>(
        future: futureCandidats,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erreur : ${snapshot.error}'));
          } else {
            final candidats = snapshot.data!;
            return ListView.builder(
              itemCount: candidats.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(candidats[index].image),
                  title: Text(candidats[index].name),
                  onTap: () {
                    // Naviguer vers l'écran de détails
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
