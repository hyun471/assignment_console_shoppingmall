import 'dart:io';
import 'package:console_shoppingmall/consolemeau.dart';
import 'package:console_shoppingmall/product.dart';
import 'package:console_shoppingmall/shoppingmall.dart';

void main() {
  ConsoleMeau meau = ConsoleMeau();
  Shoppingmall item = Shoppingmall();
  bool runningLoop = true;
  while (runningLoop) {
    meau.startMeau();
    String? input = stdin.readLineSync();
    print("입력값: $input");
    switch (input) {
      case "1":
        item.showProducts();
        break;
      case "2":
        addToCart();
        break;
      case "3":
        print("아직 준비중입니다.");
        break;
      case "4":
        print("이용해 주셔서 갑사합니다. 안녕히 가세요~");
        runningLoop = false;
        break;
    }
  }
}

void addToCart() {
  Shoppingmall item = Shoppingmall();
  print("상품명을 입력해 주세요 !");
  String? inputItem = stdin.readLineSync();
  print("입력값: $inputItem");
  bool? itemCheck = item.products.any((product) => product.name == inputItem);
  if (itemCheck == true) {
    print("상품의 개수를 입력해 주세요 !");
    String? inputItemCount = stdin.readLineSync();
    int _inputItemCount = int.parse(inputItemCount!);
    if (_inputItemCount > 0) {
      print("장바구니에 추가되었습니다 !");
    } else {
      print("상품의 개수는 1개 이상 입력해 주세요 !");
    }
  } else {
    print("해당 상품은 존재하지 않습니다. 상품 목록을 확인해 주세요 !");
  }
} // 장바구니 담기 기능
