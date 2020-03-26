import 'dart:convert';
import 'package:covid19sl/models/statistics.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart';

class HttpService {
  final String localUrl =
      "http://hpb.health.gov.lk/api/get-current-statistical";

  final String markersUrl =
      "http://my-json-server.typicode.com/yasaswick/covid19sl-mobile/marker";

  Future<Statistics> getData() async {
    Response res = await get(localUrl);
    if (res.statusCode == 200) {
      return Statistics.fromJson(jsonDecode(res.body)['data']);
    } else {
      return null;
    }
  }

  Future<List<Marker>> getMarkers() async {
    List<Marker> markerList;

    Response res = await get(markersUrl);
    if (res.statusCode == 200) {
      List<dynamic> parsedJson = jsonDecode(res.body);

      print(parsedJson);

      markerList = parsedJson.map((i) {
        return Marker(
          infoWindow: InfoWindow(title: i['name']),
            markerId: MarkerId(i['name']),
            position: LatLng(i['lat'], i['long']));
      }).toList();
      return markerList;
    } else {
      return markerList;
    }
  }
}
