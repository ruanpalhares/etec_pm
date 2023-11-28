import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revisao/catalogo.dart';
import 'package:revisao/util.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as int;
    final vm = Provider.of<Catalogo>(context);
    final produto = vm.produtos.firstWhere((p) => p.id == id);

    const divider = SizedBox(height: 15,);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Produto'),
      ),
      body: Container(
        width: double.maxFinite,
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                addText('Nome do Produto'),
                addText(produto.nome),
                divider,
                addText('Preço: '),
                addText(toCurrency(produto.preco)),
                divider,
                addText('Estoque: '),
                addText('${produto.estoque}')
              ],
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Adicionar ao Carinho'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget addText(String text) => Align(
    alignment: Alignment.centerLeft,
    child: Text(text),
  );
}
