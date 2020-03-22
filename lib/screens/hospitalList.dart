import 'package:covid19sl/models/hospitalData.dart';
import 'package:covid19sl/services/localization.dart';
import 'package:covid19sl/util/textstyles.dart';
import 'package:flutter/material.dart';

class HospitalList extends StatelessWidget {
  final List<HospitalData> hospitalData;

  final LocalizationService localizationService;

  HospitalList({@required this.hospitalData, @required this.localizationService});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        final index = i ~/ 2;
        if (i.isOdd)
          return SizedBox(
            height: 10,
          );
        if (index >= hospitalData.length) return null;
        return _buildRow(this.hospitalData[index]);
      },
    );
  }

  Widget _buildRow(HospitalData data) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // hospital name
              Row(
                children: <Widget>[
                  Text(
                    data.hospital.getLocalizedName(localizationService.locale),
                    style: hospitalName,
                  )
                ],
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(localizationService.translate('C. Local'), style: hospitalSubLabel),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            data.cumulativeLocal.toString(),
                            style: hospitalSubStats,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Text(localizationService.translate('C. Foreign'), style: hospitalSubLabel),
                          SizedBox(
                            width: 10,
                          ),
                          Text(data.cumulativeForeign.toString(),
                              style: hospitalSubStats)
                        ],
                      )
                    ],
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  // treatment stats
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(localizationService.translate('Total Cumulative'), style: hospitalSubLabel),
                          SizedBox(
                            width: 10,
                          ),
                          Text(data.cumulativeTotal.toString(),
                              style: hospitalSubStats)
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Text(localizationService.translate('Total Treatment'), style: hospitalSubLabel),
                          SizedBox(
                            width: 10,
                          ),
                          Text(data.treatmentTotal.toString(),
                              style: hospitalSubStats)
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(data.treatmentLocal.toString(),
                      style: currentHospitalStat),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: <Widget>[
                  Text(
                    localizationService.translate('Local'),
                    style: hospitalSubLabel,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Text(data.treatmentForeign.toString(),
                      style: currentHospitalStat),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: <Widget>[
                  Text(
                    localizationService.translate('Foreign'),
                    style: hospitalSubLabel,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
