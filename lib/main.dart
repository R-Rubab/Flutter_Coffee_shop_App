import 'package:flutter/material.dart';
import 'package:flutter_application_3/model/item_provider.dart';
import 'package:flutter_application_3/utils_routes_links/routes.dart';
import 'package:flutter_application_3/utils_routes_links/routesname.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp(
    {Key? key}
    ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ItemProvider(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 227, 183, 183),
              )),
              primarySwatch: Colors.pink,
              primaryTextTheme:
                  const TextTheme(titleSmall: TextStyle(color: Colors.white))),
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesName.navigationBars,
          onGenerateRoute: Routes.generatedRoute,
        );
      }),
    );
  }
}



    // Retrieve the item data from the route arguments
    // final Map<String, String>? item =
    //     ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

