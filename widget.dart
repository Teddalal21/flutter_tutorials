import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Types of Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Types of Widgets'),
        ),
        body: Center(
          // Use a Column widget to display a list of widgets vertically.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Add a Text widget with a large font size.
              const Text(
                'Wel-come to flutter!',
                style: TextStyle(fontSize: 24),
              ),
              // Add another Text widget without a font size.
              const Text(
                'This is my first App',
              ),
              // Use a Row widget to display a list of Text widgets horizontally.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Core 1'),
                  Text('Core 2'),
                  Text('Core 3'),
                ],
              ),
              // Use a Stack widget to display an Image widget and a Text widget on top of it.
              Stack(
                children: [
                  Image.network('https://picsum.photos/200'),
                  const Positioned(
                    bottom: 10,
                    right: 10,
                    child: Text('Photo by Lorem Ipsum'),
                  ),
                ],
              ),
              // Use a Container widget to create a rectangular visual element with rounded corners and a drop shadow effect.
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text('TEDDA MAN!'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
