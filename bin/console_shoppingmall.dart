import 'dart:io';
import 'package:console_shoppingmall/consolemeau.dart';
import 'package:console_shoppingmall/product.dart';
import 'package:console_shoppingmall/shoppingmall.dart';

void main() {
  ConsoleMeau meau = ConsoleMeau();
  Shoppingmall item = Shoppingmall();
  bool runningLoop = true;
  print("콘솔 쇼핑몰에 오신걸 환영합니다.");
  while (runningLoop) {
    meau.startMeau();
    String? input = stdin.readLineSync();
    print("입력값: $input");
    switch (input) {
      case "1":
        item.showProducts();
        break;
      case "2":
        item.addToCart();
        break;
      case "3":
        item.showTotal();
        break;
      case "4":
        // 장바구니 초기화 기능 추가
        // Map에 저장된 상품을 초기화
        item.clearCart();
      case "5":
        // 쇼핑몰 프로그램 종료 시 한번더 확인 기능
        print("정말로 종료하시겠습니까? [ Y / N ]");
        String? exitRun = stdin.readLineSync();
        if (exitRun?.toUpperCase() == "Y") {
          print("이용해 주셔서 갑사합니다. 안녕히 가세요~");
          runningLoop = false;
          break;
        } else if (exitRun?.toUpperCase() == "N") {
          print("콘솔 쇼핑몰에 오신걸 환영합니다.");
          break;
        }
    }
  }
}
