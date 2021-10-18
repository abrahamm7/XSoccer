import 'package:app_soccer/Models/daily.dart';

abstract class DailyNews {
  Future<List<Articles>> getDailyNews();
}
