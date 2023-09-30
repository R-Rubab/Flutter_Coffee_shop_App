class ItemNames {
  String coffename;
  String urlimg;
  var price;
  ItemNames(
      {required this.coffename, required this.urlimg, required this.price});

  ItemNames.fromMap(Map<dynamic, dynamic> itemsname)
      : coffename = itemsname['coffename'],
        urlimg = itemsname['urlimg'],
        price = itemsname['price'];
  Map<String, Object?> toMap() {
    return {
      coffename: coffename,
      urlimg: urlimg,
      price: price,
    };
  }
}

List<ItemNames> itemName = [
  ItemNames(
      coffename: 'With Oat Milk',
      urlimg: 'assets/images/coff7.jpeg',
      price: '£ 45.0'),
  ItemNames(
      coffename: 'Cinnamon & Coca',
      urlimg: 'assets/images/coff2.jpg',
      price: '£ 37.1'),
  ItemNames(
      coffename: 'Drizzled Caramel',
      urlimg: 'assets/images/coff3.jpeg',
      price: '£ 53.2'),
  ItemNames(
      coffename: 'Dolgona Whipped Macha',
      urlimg: 'assets/images/coff4.png',
      price: '£ 100.0'),
  ItemNames(
      coffename: 'Bursting Blueberry',
      urlimg: 'assets/images/coff6.jpeg',
      price: '£ 299'),
];

List<ItemNames> list = [
  ItemNames(
      coffename: 'Cappuchino',
      urlimg: 'assets/images/coff1.avif',
      price: '£ 55.0'),
  ItemNames(
      coffename: 'Latte', urlimg: 'assets/images/coff5.jpeg', price: '£ 55.0'),
  ItemNames(
      coffename: 'Expresso', urlimg: 'assets/images/cof3.jpg', price: '£ 77.5'),
  ItemNames(
      coffename: 'Americano', urlimg: 'assets/images/cof4.jpeg', price: '£ 83'),
  ItemNames(
      coffename: 'Flat White',
      urlimg: 'assets/images/cof5.jpeg',
      price: '£ 99.1'),
];
