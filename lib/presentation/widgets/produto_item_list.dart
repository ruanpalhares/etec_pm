import 'package:flutter/material.dart';
import 'package:providers/domain/produto.dart';

class ProdutoListItem extends StatelessWidget {
  final Produto produto;

  const ProdutoListItem({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/produto", arguments: produto.id);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        color: const Color(0xfffefefe), //argb
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    produto.nome,
                    style: theme.textTheme.headline6,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text("Estoque: ${produto.estoque}"),
                  ),
                  SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Preço:"),
                        Text(produto.precoFormatado)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
