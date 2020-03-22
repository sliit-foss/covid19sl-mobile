import 'dart:convert';

import 'package:covid19sl/models/hospital.dart';
import 'package:covid19sl/models/hospitalData.dart';
import 'package:flutter/foundation.dart';

class Statistics {
  final DateTime updatedOn;
  final int localNewCases;
  final int localTotalCases;
  final int localTotalInHospitals;
  final int localDeaths;
  final int localNewDeaths;
  final int localRecovered;
  final int globalNewCases;
  final int globalTotalCases;
  final int globalDeaths;
  final int globalNewDeaths;
  final int globalRecovered;
  final List<HospitalData> hospitalData;

  Statistics(
      {@required this.updatedOn,
      @required this.localNewCases,
      @required this.localTotalCases,
      @required this.localTotalInHospitals,
      @required this.localDeaths,
      @required this.localNewDeaths,
      @required this.localRecovered,
      @required this.globalDeaths,
      @required this.globalNewCases,
      @required this.globalNewDeaths,
      @required this.globalRecovered,
      @required this.globalTotalCases,
      @required this.hospitalData});

  factory Statistics.fromJson(Map<String, dynamic> json) {
    List<HospitalData> hospitalDataList = new List();

    json['hospital_data'].forEach((data) => hospitalDataList.add(
        new HospitalData(
            cumulativeForeign: data['cumulative_foreign'] as int,
            cumulativeLocal: data['cumulative_local'] as int,
            cumulativeTotal: data['cumulative_total'] as int,
            hospital: new Hospital(
                id: data['hospital']['id'] as int,
                name: data['hospital']['name'] as String,
                nameSinhala: data['hospital']['name_si'] as String,
                nameTamil: data['hospital']['name_ta'] as String),
            hospitalId: data['hospital_id'] as int,
            id: data['id'] as int,
            treatmentForeign: data['treatment_foreign'],
            treatmentLocal: data['treatment_local'],
            treatmentTotal: data['treatment_total'])));

    return Statistics(
      updatedOn: DateTime.parse(json['update_date_time']),
      localNewCases: json['local_new_cases'] as int,
      localTotalCases: json['local_total_cases'] as int,
      localDeaths: json['local_deaths'] as int,
      localNewDeaths: json['local_new_deaths'] as int,
      localRecovered: json['local_recovered'] as int,
      localTotalInHospitals:
          json['local_total_number_of_individuals_in_hospitals'] as int,
      globalDeaths: json['global_deaths'] as int,
      globalNewCases: json['global_new_cases'] as int,
      globalNewDeaths: json['global_new_deaths'] as int,
      globalRecovered: json['global_recovered'] as int,
      globalTotalCases: json['global_total_cases'] as int,
      hospitalData: hospitalDataList,
    );
  }
}
