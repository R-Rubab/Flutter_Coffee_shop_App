import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/colorss/colorss.dart';
import 'package:flutter_application_3/model/modelitems.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuCartItems extends StatefulWidget {
  const MenuCartItems({super.key});

  @override
  State<MenuCartItems> createState() => _MenuCartItemsState();
}

class _MenuCartItemsState extends State<MenuCartItems> {
  // DBHelper dbHelper = DBHelper();
  @override
  Widget build(BuildContext context) {
    // final item = Provider.of<ItemProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: Text(
            'CarT   ItEmS',
            style: GoogleFonts.lobster(
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                letterSpacing: 1,
                color: const Color.fromARGB(221, 69, 6, 6),
                // color: const Color.fromARGB(255, 220, 130, 130),
                shadows: [
                  const Shadow(
                    offset: Offset(3, 3),
                    blurRadius: 2,
                    color: Color.fromARGB(255, 112, 93, 93),
                    // color: Color.fromARGB(221, 69, 6, 6),
                  ),
                  const Shadow(
                    offset: Offset(2, 2),
                    blurRadius: 2,
                    color: Color.fromARGB(255, 210, 180, 180),
                  ),
                ]),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                    child: ListView.builder(
                  itemCount: itemName.length,
                  itemBuilder: (context, index) {
                    ItemNames itemname = itemName[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 11),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 226, 170, 170),
                              offset: Offset(4, 3),
                              blurRadius: 8,
                            ),
                            BoxShadow(
                              color: Color.fromARGB(255, 172, 128, 128),
                              offset: Offset(4, 3),
                              blurRadius: 8,
                            ),
                          ],
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  image: DecorationImage(
                                      image: AssetImage(itemname.urlimg),
                                      fit: BoxFit.cover)),
                              width: 120,
                              height: 130,
                            ),
                            Expanded(
                              child: Stack(
                                children: [
                                  Text(
                                    '   Cappuchino \n ${itemname.coffename}\n\n \t\t\t  ${itemname.price}',
                                    style: googlefonts,
                                  ),
                                  Positioned(
                                      right: 16,
                                      child: InkWell(
                                        onTap: () {},
                                        child: const Icon(
                                          Icons.delete_sweep_rounded,
                                          size: 27,
                                          color:
                                              Color.fromARGB(255, 198, 21, 80),
                                        ),
                                      )),
                                  Positioned(
                                    top: 60,
                                    right: 8,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            133, 114, 38, 38),
                                        borderRadius: BorderRadius.circular(22),
                                      ),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.add_circle_outlined,
                                              size: 40,
                                              color: icon,
                                            ),
                                          ),
                                          const Text(
                                            '1',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Icon(
                                              CupertinoIcons.minus_circle_fill,
                                              size: 40,
                                              color: icon,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )),
              ),
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      const LineBreakWidges(),
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 216, 67, 117),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  ' Apply Coupon Code',
                                  style: googleFonts,
                                ),
                                4.pw,
                                InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                        Icons.arrow_forward_ios_rounded)),
                              ],
                            ),
                          ),
                          Container(
                              height: 24,
                              width: 12,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(22),
                                    bottomRight: Radius.circular(22)),
                              )),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 24,
                                width: 12,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(22),
                                      bottomLeft: Radius.circular(22)),
                                )),
                          ),
                        ],
                      ),
                      10.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery charges',
                            style: googleFonts,
                          ),
                          Text(
                            '£ 39',
                            style: googleFonts,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Taxes', style: googleFonts),
                          Text('£ 59.1', style: googleFonts),
                        ],
                      ),
                      const LineBreakWidges(),
                      // 4.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Grand TotaL',
                              style: googleFonts.copyWith(
                                  fontSize: 27, fontWeight: FontWeight.bold)),
                          Text(
                            '£ 89.100',
                            style: googleFonts,
                          ),
                        ],
                      ),
                      6.ph,
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 10,
                              minimumSize: const Size(40, 15),
                              shadowColor:
                                  const Color.fromARGB(255, 227, 103, 144)),
                          child: Text(
                            'Pay Now',
                            style: googleFonts.copyWith(
                              fontSize: 25,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LineBreakWidges extends StatelessWidget {
  const LineBreakWidges({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / 19).floor(),
            (index) => const Text(
              '-',
              style: TextStyle(fontSize: 30),
            ),
          ),
        );
      },
    );
  }
}
