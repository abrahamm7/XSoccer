import 'dart:convert';
import 'dart:io';

import 'package:app_soccer/Helpers/ApiRequest.dart' as ApiRequest;
import 'package:app_soccer/Models/daily.dart';

import 'newsServices.dart';
import 'package:http/http.dart' as http;

class DailyRepository implements DailyNews {
  @override
  Future<List<Articles>> getDailyNews() {
    return fetchNews();
  }
}

Future<List<Articles>> fetchNews() async {
  http.Response response = await http
      .get(Uri.parse(ApiRequest.Requests.requestDaily), headers: {
    HttpHeaders.authorizationHeader: "78425d5d244f4ad4a4cb1d864b9ee167"
  });

  if (response.statusCode == 200) {
    var competitionitem = Daily.fromJson(jsonDecode(response.body)).articles;
    return competitionitem;
  } else {
    throw Exception('Error while fetch data');
  }
}
