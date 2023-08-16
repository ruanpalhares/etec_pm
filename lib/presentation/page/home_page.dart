import 'package:aula_0108/data/album_repository.dart';
import 'package:aula_0108/presentation/widget/album_carrousel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final albums = loadAlbums();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          AlbumCarrousel(albums: albums)
        ],
      ),
    );
  }
}