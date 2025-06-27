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
    List<String> addProduct = [];
    if (cart.isEmpty) {
      print("장바구니에 담긴 상품이 없습니다.");
      return;
    } else {
      for (var entry in cart.entries) {
        Product product = entry.key;
        int count = entry.value;
        totalPrice += product.price * count;
        // 장바구니에 담긴 물품 출력
        addProduct.add(product.name);
      }
      print("장바구니에 담긴 상품 ${addProduct.join(', ')} 이며, 총 가격은 $totalPrice원 입니다.");
      return;
    }
  } // 장바구니에 담긴 총 가격

  // 장바구니 초기화를 위한 함수 추가
  void clearCart() {
    // 조건문을 사용하여 장바구니 담긴 상품이 있으면 초기화
    if (cart.isNotEmpty) {
      cart = {};
      print("장바구니를 초기화 합니다.");
    } else if (cart.isEmpty) {
      print("이미 장바구니가 비어있습니다.");
    }
  }
}
