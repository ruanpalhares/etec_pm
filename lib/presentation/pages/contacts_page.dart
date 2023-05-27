import 'package:agenda/domain/contato.dart';
import 'package:agenda/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

var currentDate = DateTime.now();


class ContactsPage extends StatelessWidget {
  final Contato contato;
  const ContactsPage({
  super.key,
  required this.contato
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contato.nome),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 200,
                child: Image.network(contato.imagem),
              ),
              Text(contato.nome)
            ],
          ),
          Column(
          children: [
              Text('Telefone: ${contato.telefone}'),
              Text('Email: ${contato.email}'),
              Text('Data de Aniversario: ${contato.dataAniversario.day}/${contato.dataAniversario.month}/${contato.dataAniversario.year}'),
              Text('Age: ${currentDate.year - contato.dataAniversario.year} anos')
          ])
        ],
      ),
    );
  }
}