import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revisao/catalogo.dart';
import 'package:revisao/produto.dart';
import 'package:revisao/util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<Catalogo>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: vm.produtos.length,
          itemBuilder: (context, index) => catalogoItem(context, vm.produtos[index])),
    );
  }

  Widget catalogoItem(BuildContext context, Produto produto) => GestureDetector(
        onTap: () => Navigator.pushNamed(
          context,
          '/detail',
          arguments: produto.id
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(children: [
            Expanded(
              child: Text(produto.nome),
            ),
            Text(toCurrency(produto.preco)),
          ]),
        ),
      );
}
