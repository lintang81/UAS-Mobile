import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muhammad Lintang Herlambang',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Quicksand',
      ),
      home: const Home(),
    );
  }
}