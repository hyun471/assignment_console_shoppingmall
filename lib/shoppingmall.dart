import 'package:console_shoppingmall/product.dart';

class Shoppingmall {
  List<Product> products = [
    Product("Shirt", 45000),
    Product("one-piece", 30000),
    Product("T-shirt", 35000),
    Product("Shorts", 38000),
    Product("Socks", 5000),
  ];

  Map<Product, int> cart = {};

  void showProducts() {
    for (var product in products) {
      product.show();
    }
  }
} // 상품 리스트 및 상품 장바구니로 저장 기능
