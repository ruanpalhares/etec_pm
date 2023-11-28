import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revisao/catalogo.dart';
import 'package:revisao/detail_page.dart';
import 'package:revisao/home_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Catalogo>(create: (_) => Catalogo()),
      ],
      child: MaterialApp(
        title: 'Lojinha',
        theme: ThemeData(
          primarySwatch: Colors.orange
        ),
        initialRoute: '/',
        routes: {
          '/':(context) => const HomePage(),
          '/detail': (context) => const DetailPage(),
        },
      ),
    );
  }
}