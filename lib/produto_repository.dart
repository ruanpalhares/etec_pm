import 'package:revisao/produto.dart';

class ProdutoRepository {
  static List<Produto> list(){
    return <Produto>[
      Produto(id: 1, nome: 'Banana', preco: 6.90, estoque: 50)
      ,Produto(id: 2, nome: 'Abacate', preco: 8.90, estoque: 50)
      ,Produto(id: 3, nome: 'Abacaxi', preco: 5.90, estoque: 50)
      ,Produto(id: 4, nome: 'Ameixa', preco: 10.90, estoque: 50)
      ,Produto(id: 5, nome: 'Tomate', preco: 9.90, estoque: 50)
      ,Produto(id: 6, nome: 'Laranja', preco: 4.90, estoque: 50)
    ];
  }
}