import 'package:flutter/material.dart';
import 'package:homework8/passwordnumber.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework8',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: PasswordnumberPage(),
    );
  }
}

