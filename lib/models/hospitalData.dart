import 'package:covid19sl/models/hospital.dart';
import 'package:flutter/foundation.dart';

class HospitalData {
  final int id;
  final int hospitalId;
  final int cumulativeLocal;
  final int cumulativeForeign;
  final int treatmentLocal;
  final int treatmentForeign;
  final int cumulativeTotal;
  final int treatmentTotal;
  final Hospital hospital;

  HospitalData({
      @required this.cumulativeForeign,
      @required this.cumulativeLocal,
      @required this.cumulativeTotal,
      @required this.hospital,
      @required this.hospitalId,
      @required this.id,
      @required this.treatmentForeign,
      @required this.treatmentLocal,
      @required this.treatmentTotal
  });

}
