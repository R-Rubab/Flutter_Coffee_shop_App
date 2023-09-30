import 'package:flutter/material.dart';
import 'package:flutter_application_3/screen/Screen2/1pages/navigation.dart';
import 'package:flutter_application_3/screen/Screen2/notification.dart';
import 'package:flutter_application_3/utils_routes_links/routesname.dart';
import '../screen/Screen2/homepage.dart';
import '../screen/Screen2/menuitems/menuitem.dart';

class Routes {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.navigationBars:
        return MaterialPageRoute(
            builder: ((context) => const NavigationBars()));
      case RoutesName.homepage:
        return MaterialPageRoute(builder: ((context) => const Homepage()));
      case RoutesName.menuCartItems:
        return MaterialPageRoute(builder: ((context) => const MenuCartItems()));
      case RoutesName.notification:
        return MaterialPageRoute(
            builder: ((context) => const NotificationScreen()));
      default:
        return MaterialPageRoute(
            builder: ((context) => const Scaffold(
                  body: Text('No defined Routes'),
                )));
    }
  }
}
