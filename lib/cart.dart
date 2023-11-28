import 'package:flutter/material.dart';
import 'package:revisao/cart_item.dart';
import 'package:revisao/produto.dart';

class Cart extends ChangeNotifier {

  final List<CartItem> items = [];

  void add(Produto produto) {

    final index = items.indexWhere((i) => i.produto.id == produto.id);
    if(index != -1){
      items[index] = items[index].aumenta();
    } else {
      items.add(CartItem(preco: produto.preco, produto: produto, quantidade: 1));
    }

    notifyListeners();
  }

  void sub(Produto produto) {
    
  }

}