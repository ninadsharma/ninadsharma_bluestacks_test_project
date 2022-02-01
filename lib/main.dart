import 'package:flutter/material.dart';
import 'package:ninadsharma_bluestacks_test_project/LoginFiles/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninad Sharma Bluestacks Test',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
