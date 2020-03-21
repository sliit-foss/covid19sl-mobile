import 'package:flutter/material.dart';

class DashboardState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(children: <Widget>[
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('COVID-19 SL')
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Material(
                  elevation: 4,
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 16.0, bottom: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("Hello")
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )
    ]));
  }
}

class DashboardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashboardState();
}
