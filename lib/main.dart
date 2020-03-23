
import 'package:flutter/material.dart';
import 'screens/home.dart';
void main() => runApp(Covid19());

class Covid19 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid19sl',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Home()
    );
  }
}