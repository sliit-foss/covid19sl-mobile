import 'package:covid19sl/models/statistics.dart';
import 'package:covid19sl/services/http.dart';
import 'package:flutter/material.dart';

class DashboardState extends State<DashboardPage> {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(children: <Widget>[
      SingleChildScrollView(
        child: FutureBuilder<Statistics>(
          future: httpService.getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Text('Could not fetch data');

              case ConnectionState.waiting:
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 700,
                        child: Center(
                            child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.blue),
                        )),
                      ),
                    )
                  ],
                );

              case ConnectionState.active:
                break;
              case ConnectionState.done:
                if (snapshot.hasError)
                  return Text('Error:\n\n${snapshot.error}');

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      children: <Widget>[Text('COVID-19 SL')],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: <Widget>[
                        Material(
                          elevation: 4,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0,
                                right: 16.0,
                                top: 16.0,
                                bottom: 32.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[Text("Total Local Cases")],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(snapshot.data.localTotalCases
                                        .toString())
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    // Local Deaths
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(snapshot.data.localDeaths
                                                .toString())
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[Text("Deaths")],
                                        )
                                      ],
                                    ),

                                    // Local Recovered
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(snapshot.data.localRecovered
                                                .toString())
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[Text("Recovered")],
                                        )
                                      ],
                                    ),

                                    // Local total in hospital
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(snapshot
                                                .data.localTotalInHospitals
                                                .toString())
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text("In Hospitals")
                                          ],
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
                );
            }
          },
        ),
      )
    ]));
  }
}

class DashboardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashboardState();
}
