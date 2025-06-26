import 'package:console_shoppingmall/product.dart';

class Shoppingmall {
  List<Product> products = [
    Product("셔츠", 45000),
    Product("원피스", 30000),
    Product("반팔티", 35000),
    Product("반바지", 38000),
    Product("양말", 5000),
  ];
  void showProducts() {
    for (var product in products) {
      product.show();
    }
  }
}
