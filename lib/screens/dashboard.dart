import 'package:flutter/material.dart';

class DashboardState extends State<DashboardPage> {
  final int totalLocalCount = 76;
  final int localDeaths = 0;
  final int localRecovered = 1;
  final int localInHospital = 245;
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
              children: <Widget>[Text('COVID-19 SL')],
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[Text("Total Local Cases")],
                        ),
                        Row(
                          children: <Widget>[Text(totalLocalCount.toString())],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Local Deaths
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(children: <Widget>[
                                  Text(localDeaths.toString())
                                ],),
                                Row(
                                  children: <Widget>[Text("Deaths")],
                                )
                              ],
                            ),

                            // Local Recovered
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(localRecovered.toString())
                                  ],
                                ),
                                Row(
                                  children: <Widget>[Text("Recovered")],
                                )
                              ],
                            ),

                            // Local total in hospital
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(localInHospital.toString())
                                  ],
                                ),
                                Row(
                                  children: <Widget>[Text("In Hospitals")],
                                )
                              ],
                            )
                          ],
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
