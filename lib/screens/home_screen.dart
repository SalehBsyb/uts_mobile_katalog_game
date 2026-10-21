import 'package:flutter/material.dart';

import '../services/api_service.dart';
import '../models/game_model.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Game>> futureGames;

  @override
  void initState() {
    super.initState();
    futureGames = ApiService().fetchGames();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Katalog Game Gratis')),
      body: FutureBuilder<List<Game>>(
        future: futureGames,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Kondisi Loading
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // Kondisi Error
            return Center(child: Text('Terjadi kesalahan: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            // Kondisi Success
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final game = snapshot.data![index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.network(
                      game.thumbnail,
                      width: 100,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.broken_image, size: 50);
                      },
                    ),
                    title: Text(game.title),
                    subtitle: Text(game.genre),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(game: game),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          }
          return const Center(child: Text('Tidak ada data'));
        },
      ),
    );
  }
}
