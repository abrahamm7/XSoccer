import 'package:app_soccer/Models/competitions.dart' as Competitons;

abstract class SoccerCompetitions {
  Future<List<Competitons.Competitions>> getLeagues();
}
