import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/domain/produto.dart';
import 'package:providers/presentation/widgets/produto_item_list.dart';
import 'package:providers/service/catalogo_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final catalogo = context.read<Catalogo>();
    final itens = catalogo.withEstoque();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          builAppBar(context),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                makeItemFromList(itens),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget? Function(BuildContext context, int index) makeItemFromList(List<Produto> itens){
    return (context, index) {
      if (index >= itens.length){
        return null;
      }

      return ProdutoListItem(produto: itens[index]);
    };
  }

  Widget builAppBar(BuildContext context) => SliverAppBar(
        title: const Text("Home"),
        floating: true,
        snap: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      );
}
