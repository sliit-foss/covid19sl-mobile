import 'dart:convert';
import 'package:covid19sl/models/statistics.dart';
import 'package:http/http.dart';

class HttpService {
  final String localUrl =
      "http://hpb.health.gov.lk/api/get-current-statistical";

  Future<Statistics> getData() async {
    Response res = await get(localUrl);
    if (res.statusCode == 200) {
      return Statistics.fromJson(jsonDecode(res.body)['data']);
    } else {
      return null;
    }
  }
}
