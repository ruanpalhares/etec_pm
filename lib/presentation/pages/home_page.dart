import 'package:agenda/data/contato_repository.dart';
import 'package:flutter/material.dart';

final contatos = loadContatos();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Agenda")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.separated(
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/contacts',
                    arguments: contatos[index]);
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(contatos[index].nome),
              ),
          ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: contatos.length),
        ),
    );
  }
}
