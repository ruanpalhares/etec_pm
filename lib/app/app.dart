import 'package:aula_0108/presentation/page/home_page.dart';
import 'package:aula_0108/presentation/page/login_page.dart';
import 'package:aula_0108/presentation/page/track_list_page.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Album',
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home':(context) => const HomePage(),
        '/track-list':(context) => const TrackListPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}