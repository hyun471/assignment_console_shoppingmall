import 'dart:io';

import 'package:console_shoppingmall/product.dart';

class Shoppingmall {
  // 상품 리스트화
  List<Product> products = [
    Product("Shirt", 45000),
    Product("one-piece", 30000),
    Product("T-shirt", 35000),
    Product("Shorts", 38000),
    Product("Socks", 5000),
  ];

  // 상품 장바구니로 저장 기능
  Map<Product, int> cart = {};

  void showProducts() {
    for (var product in products) {
      product.show();
    }
  }

  void addToCart() {
    print("상품명을 입력해 주세요 !");
    String? inputItem = stdin.readLineSync()?.trim();
    print("입력값: $inputItem");
    bool? itemCheck = products.any((product) => product.name == inputItem);
    if (itemCheck == true) {
      print("상품의 개수를 입력해 주세요 !");
      String? inputItemCount = stdin.readLineSync();
      int selectItemCount = int.parse(inputItemCount!);
      if (selectItemCount > 0) {
        print("장바구니에 추가되었습니다 !");
        Product selectItem = products.firstWhere(
          (product) => product.name == inputItem,
        );
        cart[selectItem] = selectItemCount;
      } else {
        print("상품의 개수는 1개 이상 입력해 주세요 !");
      }
    } else {
      print("해당 상품은 존재하지 않습니다. 상품 목록을 확인해 주세요 !");
    }
  } // 장바구니 담기 기능

  void showTotal() {
    int totalPrice = 0;
    if (cart.isEmpty) {
      print("장바구니에 담긴 상품이 없습니다.");
      return;
    } else {
      for (var entry in cart.entries) {
        Product product = entry.key;
        int count = entry.value;
        totalPrice += product.price * count;
      }
      print("장바구니에 담긴 상품의 총 가격은 $totalPrice원 입니다.");
      return;
    }
  } // 장바구니에 담긴 총 가격
}
