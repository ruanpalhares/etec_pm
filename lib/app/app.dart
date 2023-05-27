import 'package:agenda/domain/contato.dart';
import 'package:agenda/presentation/pages/contacts_page.dart';
import 'package:agenda/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const HomePage(),
        '/contacts': (context) {
          var contato = ModalRoute.of(context)!.settings.arguments as Contato;
          return ContactsPage(contato: contato);}
      }
    );
  }
}