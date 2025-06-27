import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final imageList = <String>[
      'assets/images/01.jpg',
      'assets/images/02.png',
      'assets/images/03.jpg',
      'assets/images/04.png',
      'assets/images/05.jpg',
      'assets/images/06.jpg',
      'assets/images/07.png',
      'assets/images/08.jpg',
      'assets/images/09.png',
      'assets/images/10.png',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Grid view')),
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,         
            crossAxisSpacing: 10,       
            mainAxisSpacing: 10,        
          ),
          itemCount: imageList.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              imageList[index],
              fit: BoxFit.cover, 
            );
          },
        ),
      ),
    );
  }
}
