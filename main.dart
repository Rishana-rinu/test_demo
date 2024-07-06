import 'package:flutter/material.dart';
import 'package:navigation_page/screen_1.dart';
import 'package:navigation_page/screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//root

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'homepage',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const Screen1(),
      routes: {
        'screen1': (context) {
          return const Screen1();
        },
        'screen2': (context) {
          return const Screen2();
        }
      },
    );
  }
}