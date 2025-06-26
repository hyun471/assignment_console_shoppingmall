import 'dart:io';
import 'package:console_shoppingmall/consolemeau.dart';
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
        print("상품명을 입력해 주세요 !");
        String? inputItem = stdin.readLineSync();
        print("입력값: $inputItem");
        var outputItem = item.products.any(
          (Product) => Product.name == inputItem,
        );
        if (outputItem = true) {
          print("상품의 개수를 입력해 주세요 !");
          String? inputItemCount = stdin.readLineSync();
          print("장바구니에 $outputItem가 $inputItemCount개 담겼습니다 !");
        } else if (outputItem = false) {
          print("입력값이 올바르지 않습니다 !");
        }
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
