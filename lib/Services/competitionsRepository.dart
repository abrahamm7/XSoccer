import 'dart:convert';
import 'dart:io';

import 'package:app_soccer/Helpers/ApiRequest.dart' as ApiRequest;

import 'competitionServices.dart' as CompetitonService;
import 'package:http/http.dart' as http;
import 'package:app_soccer/Models/competitions.dart';

class CompetitionsRepository implements CompetitonService.SoccerCompetitions {
  @override
  Future<List<Competitions>> getLeagues() async {
    return await fetchCompetitions();
  }
}

Future<List<Competitions>> fetchCompetitions() async {
  http.Response response = await http
      .get(Uri.parse(ApiRequest.Requests.requestLeagues), headers: {
    HttpHeaders.authorizationHeader: "78425d5d244f4ad4a4cb1d864b9ee167"
  });

  if (response.statusCode == 200) {
    var competitionitem =
        Leagues.fromJson(jsonDecode(response.body)).competitions;
    return competitionitem;
  } else {
    throw Exception('Error while fetch data');
  }
}
