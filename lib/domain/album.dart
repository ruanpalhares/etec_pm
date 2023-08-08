import 'package:aula_0108/domain/music.dart';
import 'package:flutter/material.dart';

class Album {
  final String title;
  final String artist;
  final int release;
  final String cover;
  final List<Music> musics;

  Album ({    
    required this.title,
    required this.artist,
    required this.release,
    required this.cover,
    required this.musics
    });
}