
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'screens/home.dart';
import 'package:provider/provider.dart';
import 'services/http.dart';

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
      home:MultiProvider(
        providers: [
          FutureProvider<List<Marker>>.value(value:HttpService().getMarkers() )
        ],
        child: Home())
    );
  }
}
