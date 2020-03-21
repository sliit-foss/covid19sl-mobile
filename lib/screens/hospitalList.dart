import 'package:covid19sl/models/hospitalData.dart';
import 'package:flutter/material.dart';

class HospitalList extends StatelessWidget {
  final List<HospitalData> hospitalData;

  HospitalList({@required this.hospitalData}) {
    print('inside hospital list');
    print(this.hospitalData);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) {
      final index = i ~/ 2;
      if (i.isOdd) return Divider();
      return _buildRow(this.hospitalData[index]);
    });
  }

  Widget _buildRow(HospitalData data) {
    return ListTile(
      title: Text(data.hospital.name),
    );
  }
}
