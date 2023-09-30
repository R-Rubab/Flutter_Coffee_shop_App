import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(seconds: 4),
  //       (() => Navigator.pushNamed(context, RoutesName.homepage)));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/2878712/pexels-photo-2878712.jpeg?auto=compress&cs=tinysrgb&w=600'),
                fit: BoxFit.cover,
                opacity: 0.89,
              ),
            ),
          ),
          // const CoffeeTopSide(),
          // const Button(),
          // const LeftSideBar(),
        ],
      ),
    );
  }
}
