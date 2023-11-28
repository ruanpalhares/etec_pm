import 'package:flutter/material.dart';
import 'package:revisao/produto.dart';

class CartItem {
  final Produto produto;
  final double preco;
  final int quantidade;

  CartItem({
    required this.preco,
    required this.produto,
    required this.quantidade,
  });

  double get total => preco * quantidade;

  CartItem aumenta() {
    return CartItem(
      preco: preco,
      produto: produto,
      quantidade: quantidade + 1,
    );
  }

  CartItem diminui() {
    return CartItem(
      preco: preco,
      produto: produto,
      quantidade: quantidade - 1,
    );
  }
}
