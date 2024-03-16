class ItemNames {
  String coffeeName;
  String urlImg;
  var price;
  ItemNames(
      {required this.coffeeName, required this.urlImg, required this.price});

  ItemNames.fromMap(Map<dynamic, dynamic> itemsName)
      : coffeeName = itemsName['coffeeName'],
        urlImg = itemsName['urlImg'],
        price = itemsName['price'];
  Map<String, Object?> toMap() {
    return {
      coffeeName: coffeeName,
      urlImg: urlImg,
      price: price,
    };
  }
}

List<ItemNames> itemName = [
  ItemNames(
      coffeeName: 'With Oat Milk',
      urlImg: 'assets/images/coff7.jpeg',
      price: '£ 45.0'),
  ItemNames(
      coffeeName: 'Cinnamon & Coca',
      urlImg: 'assets/images/coff2.jpg',
      price: '£ 37.1'),
  ItemNames(
      coffeeName: 'Drizzled Caramel',
      urlImg: 'assets/images/coff3.jpeg',
      price: '£ 53.2'),
  ItemNames(
      coffeeName: 'Bologna Whipped Mocha',
      urlImg: 'assets/images/coff4.png',
      price: '£ 100.0'),
  ItemNames(
      coffeeName: 'Bursting Blueberry',
      urlImg: 'assets/images/coff6.jpeg',
      price: '£ 299'),
];

List<ItemNames> list = [
  ItemNames(
      coffeeName: 'Cappuccino',
      urlImg: 'assets/images/coff3.jpg',
      price: '£ 55.0'),
  ItemNames(
      coffeeName: 'Latte', urlImg: 'assets/images/coff5.jpeg', price: '£ 55.0'),
  ItemNames(
      coffeeName: 'Espresso',
      urlImg: 'assets/images/cof3.jpg',
      price: '£ 77.5'),
  ItemNames(
      coffeeName: 'Americano',
      urlImg: 'assets/images/cof4.jpeg',
      price: '£ 83'),
  ItemNames(
      coffeeName: 'Flat White',
      urlImg: 'assets/images/cof5.jpeg',
      price: '£ 99.1'),
];
