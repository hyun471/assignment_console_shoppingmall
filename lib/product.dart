class Product {
  String name;
  int price;
  int count;
  Product(this.name, this.price, [this.count = 1]);

  void show() {
    print("$name / ($price * $count)원");
  }
}
