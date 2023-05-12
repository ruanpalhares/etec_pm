import 'package:cardapio/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final moeda = NumberFormat.currency(
  locale: 'pt-br',
  symbol: 'R\$'
);

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardapio',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),
      },
    );
  }
}