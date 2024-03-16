import 'package:flutter/material.dart';
import 'package:flutter_application_3/colorss/colorss.dart';
import 'package:flutter_application_3/model/db_helper.dart';
import 'package:flutter_application_3/model/item_provider.dart';
import 'package:flutter_application_3/utils_routes_links/routesname.dart';
import 'package:provider/provider.dart';
import '../../model/modelitems.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  DBHelper? dbHelper = DBHelper();

  // ignore: unused_field
  final int _selectindex = 0;

  // void _navigationbottombar(int index) {
  //   setState(() {
  //     _selectindex = index;
  //   });
  // }

  // List pages = [
  //   const MyHomePage(),
  //   const MenuCartItems(),
  // ];

  var list1 = [
    ['Espression', true],
    ['Capuchino', false],
    ['Flat White', false],
    ['Latte', false],
    ['Americano', false]
  ];
  Color col = const Color.fromARGB(255, 201, 190, 156);
  bool selecttype = true;
  void selecttypename(int index) {
    setState(() {
      for (var i = 0; i < list1.length; i++) {
        selecttype = false;
        list1[index][1] = selecttype;
        selecttype ? Colors.orange : const Color.fromARGB(255, 201, 190, 156);
      }

      list1[index][1] = selecttype;
      selecttype ? Colors.orange : const Color.fromARGB(255, 201, 190, 156);
    });
  }

  @override
  Widget build(BuildContext context) {
    final item = Provider.of<ItemProvider>(context);
    final textcontroler = TextEditingController();

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 74, 67, 67),
            Color.fromARGB(255, 136, 121, 121),
            Color.fromARGB(255, 147, 122, 122),
            Color.fromARGB(255, 207, 180, 180),
            Color.fromARGB(255, 169, 160, 160),
            Color(0xff9bc5c3),
            Color.fromARGB(255, 119, 140, 161),
          ], transform: GradientRotation(10)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 14, left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.line_axis,
                        size: 50,
                        color: Color.fromARGB(255, 211, 211, 211),
                        shadows: [shadow]),
                  ),
                  Text(
                    "let's have a sip!",
                    style: stylewhite,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.notification);
                    },
                    child: const Hero(
                      tag: 'tagPic',
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        radius: 27,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () async {
                  // SharedPreferences sp = await SharedPreferences.getInstance();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
                  child: TextField(
                    controller: textcontroler,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 77, 21, 6)),
                      hintText: 'What would you wanna drink?.... ',
                      prefixIcon: Icon(Icons.search,
                          color: Color.fromARGB(255, 96, 66, 54)),
                      hoverColor: black,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 4, color: borderblack),
                          borderRadius: BorderRadius.all(Radius.circular(23))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 4, color: borderblack),
                          borderRadius: BorderRadius.all(Radius.circular(23))),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 45,
                      height: 572,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(30)),
                        color: Color.fromARGB(235, 84, 80, 75),
                      ),
                      child: ListView.builder(
                          itemCount: list1.length,
                          itemBuilder: ((context, index) {
                            return RotatedBox(
                              quarterTurns: 1,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 11),
                                child: InkWell(
                                  onTap: (() {
                                    selecttypename(index);

                                    // Color color = selecttype
                                    //     ? Colors.orange
                                    //     : const Color.fromARGB(
                                    //         255, 201, 190, 156);
                                  }),
                                  child: Text(
                                    '${list1[index][0]} ${list1[index][1]}',
                                    style: TextStyle(
                                      color: col,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      shadows: const [
                                        Shadow(
                                            color:
                                                Color.fromARGB(255, 35, 32, 23),
                                            offset: Offset(2, 2),
                                            blurRadius: 4)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }))),
                  // const MenuItems(),
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 518,
                      width: 346,
                      child: ListView.builder(
                        itemCount: itemName.length,
                        itemBuilder: (context, index) {
                          ItemNames itemnamee = itemName[index];
                          ItemNames itemname1 = list[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 9.0),
                            child: InkWell(
                              onTap: () {
                                dbHelper!
                                    .insert(ItemNames(
                                        coffeeName: itemnamee.coffeeName,
                                        urlImg: itemnamee.urlImg,
                                        price: itemnamee.price))
                                    .then((value) {
                                  // ignore: avoid_print
                                  print('object');
                                  item.addTotalPrice(itemnamee.price);
                                  item.addCounter();
                                }).onError((error, stackTrace) {
                                  // ignore: avoid_print
                                  print('error');
                                });
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  MenuItems(
                                    name: itemnamee.coffeeName,
                                    price: itemnamee.price,
                                    urlimage: itemnamee.urlImg,
                                  ),
                                  MenuItems(
                                    name: itemname1.coffeeName,
                                    price: itemname1.price,
                                    urlimage: itemname1.urlImg,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MenuItems extends StatelessWidget {
  String name, price, urlimage;
  MenuItems({
    super.key,
    required this.name,
    required this.price,
    required this.urlimage,
  });
  DBHelper dbHelper = DBHelper();
  @override
  Widget build(BuildContext context) {
    final item = Provider.of<ItemProvider>(context);
    //  ItemNames itemname1 = ItemNames(coffename: coffename, urlimg: urlimg, price: price);
    //  items(){
    //   for (var i in itemName) {
    //     itemName[i];
    //   }
    //  }
    return Container(
      height: 260,
      width: 160,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 7),
        color: const Color.fromARGB(105, 190, 163, 163),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
            // width: 160,
            // height: 270,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 81, 41, 41),
                    offset: Offset(3, 3),
                    blurRadius: 7)
              ],
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(urlimage)),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(33), topRight: Radius.circular(33)),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 2),
                child: Text(
                  name.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: googlefonts.copyWith(
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    dbHelper
                        .insert(ItemNames(
                            coffeeName: name, urlImg: urlimage, price: price))
                        .then((value) {
                      // ignore: avoid_print
                      print('object');
                      item.addTotalPrice(double.parse(price));
                      item.addCounter();
                    }).onError((error, stackTrace) {
                      // ignore: avoid_print
                      print('error');
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 8,
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      shadowColor: const Color.fromARGB(255, 184, 112, 112),
                      backgroundColor:
                          const Color.fromARGB(205, 225, 147, 174)),
                  child: Row(
                    children: [
                      Text(price),
                      const Expanded(
                          child: Icon(
                        Icons.add_box_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 227, 183, 183),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
