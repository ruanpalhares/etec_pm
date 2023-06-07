import 'package:providers/domain/produto.dart';

class Catalogo {
  final List<Produto> itens;

  Catalogo({required this.itens});

  Produto findProdutoById(int id){
    return withEstoque().firstWhere((element) => element.id == id);
  }


//// metodos para procurar produtos que por algumas letras


  List<Produto> filter(String texto){
    return withEstoque()
      .where((element) => matchNomeOrDescricao(element, texto))
      .toList();
  }

  List<Produto> withEstoque(){
    return itens
    .where((element) => matchTemEstoque(element))
    .toList();
  }

  bool matchTemEstoque(Produto produto){
    return produto.estoque > 0;
  }

  bool matchNomeOrDescricao(Produto produto, String texto) {
    return produto.nome.contains(texto)  ||
           produto.descricao.contains(texto);
  }  
}