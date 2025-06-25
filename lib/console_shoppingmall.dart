import 'dart:io'; // 사용자 입력을 받을 때 꼭 필요!

void main() {
  ConsoleMeau meau = ConsoleMeau();
  meau.startMeau();
  String? input = stdin.readLineSync();
  print("입력값: $input");
}

class ConsoleMeau {
  String consoleMeau =
      "[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료 ";
  void startMeau() {
    print(consoleMeau);
  }
}

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

class Product {
  String name;
  int price;
  Product(this.name, this.price);

  void show() {
    print("$name / $price원");
  }
}
