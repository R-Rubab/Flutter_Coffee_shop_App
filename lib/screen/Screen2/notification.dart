import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'tagPic',
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {},
            child: AnimatedContainer(
              width: double.infinity,
              height: double.infinity,
              curve: Curves.bounceInOut,
              duration: const Duration(seconds: 3),
              decoration: const BoxDecoration(
                // shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.pink,
                      offset: Offset(4, 4),
                      blurRadius: 129),
                ],
              ),
              child: const Image(
                width: 20,
                height: 20,
                image: NetworkImage(
                    'https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=600'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
