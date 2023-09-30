import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/model/db_helper.dart';
import 'package:flutter_application_3/screen/Screen2/homepage.dart';
import 'package:flutter_application_3/screen/Screen2/notification.dart';
import 'package:provider/provider.dart';
import '../../../model/item_provider.dart';
import '../menuitems/menuitem.dart';

class NavigationBars extends StatefulWidget {
  const NavigationBars({super.key});

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  DBHelper? dbHelper = DBHelper();

  int _selectindex = 2;

  void _navigationbottombar(int index) {
    setState(
      () {
        _selectindex = index;
      },
    );
  }

  List pages = [
    const Text('setting'),
    const MenuCartItems(),
    const Homepage(),
    const Text('data'),
    const NotificationScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    // final item = Provider.of<ItemProvider>(context);

    return SafeArea(
      // top: false,
      child: ClipRect(
        child: Scaffold(
          extendBody: true,
          body: pages[_selectindex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
            
                iconTheme: const IconThemeData(
                    color: Color.fromARGB(255, 255, 226, 235),
                    size: 30,
                    shadows: [
                      Shadow(
                        color: Color.fromARGB(255, 96, 4, 4),
                        offset: Offset(2, 2),
                        blurRadius: 19,
                      )
                    ])),
            child: CurvedNavigationBar(
              animationCurve: Curves.easeInOutCubicEmphasized,
              height: 60,
              index: _selectindex,
              backgroundColor: Colors.transparent,
              color: const Color.fromARGB(215, 219, 70, 119),
              
              onTap: (value) => _navigationbottombar(value),
              items: [
                const Icon(CupertinoIcons.settings),
                Badge(
                  textColor: Colors.white,
                  label: Consumer<ItemProvider>(
                    builder: (BuildContext context, value, Widget? child) {
                      return Text(value.getCounter().toString());
                    },
                  ),
                  child: const Icon(Icons.shopping_cart),
                ),
                const Icon(Icons.home),
                const Icon(CupertinoIcons.heart_solid),
                const Badge(
                  textColor: Colors.white,
                  label: Text('0'),
                  child: Icon(CupertinoIcons.bell_fill),
                ),
              ],
            ),
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //     // backgroundColor: const Color.fromARGB(255, 235, 196, 196),
          //     // backgroundColor: const Color.fromARGB(255, 235, 196, 196),
          //     backgroundColor: Colors.transparent,
          //     elevation: 6,
          //     currentIndex: _selectindex,
          //     showUnselectedLabels: false,
          //     showSelectedLabels: false,
          //     selectedItemColor: const Color.fromARGB(255, 198, 21, 80),
          //     unselectedItemColor: Colors.brown.withOpacity(0.4),
          //     onTap: _navigationbottombar,
          //     type: BottomNavigationBarType.fixed,
          //     items: [
          //       const BottomNavigationBarItem(
          //           icon: Icon(Icons.home), label: 'home'),
          //       BottomNavigationBarItem(
          //           icon: Badge(
          //             textColor: Colors.white,
          //             label: Consumer<ItemProvider>(
          //               builder: (BuildContext context, value, Widget? child) {
          //                 return Text(value.getCounter().toString());
          //               },
          //             ),
          //             child: const Icon(Icons.shopping_cart),
          //           ),
          //           label: 'cart'),
          //       const BottomNavigationBarItem(
          //           icon: Icon(CupertinoIcons.heart_solid), label: 'likes'),
          //       const BottomNavigationBarItem(
          //           icon: Badge(
          //             textColor: Colors.white,
          //             label: Text('0'),
          //             child: Icon(CupertinoIcons.bell_fill),
          //           ),
          //           label: 'Notification'),
          //     ]),
        ),
      ),
    );
  }
}
