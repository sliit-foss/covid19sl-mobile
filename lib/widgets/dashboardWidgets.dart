import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:covid19sl/models/statistics.dart';


class DashboardOverviewCard extends StatefulWidget {
  @override
  _DashboardOverviewCardState createState() => _DashboardOverviewCardState();
}

class _DashboardOverviewCardState extends State<DashboardOverviewCard> {
  @override
  Widget build(BuildContext context) {  

    //have to do a null check here
   final newsList = Provider.of<Statistics>(context);
    return Container(


      
    );
  }
}