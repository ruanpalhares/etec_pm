import 'package:flutter/foundation.dart';
import 'package:revisao/produto.dart';
import 'package:revisao/produto_repository.dart';

class Catalogo extends ChangeNotifier{
  
 late List<Produto> produtos;

 Catalogo() {
  produtos = ProdutoRepository.list();
 } 
}