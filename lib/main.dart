import 'package:covid19sl/models/report.dart';
import 'package:covid19sl/models/statistics.dart';
import 'package:covid19sl/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      home:DashboardPage()
    );
  }
}