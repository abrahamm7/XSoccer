import 'package:equatable/equatable.dart';

import 'area.dart';
import 'current_season.dart';

class Competitions extends Equatable {
  late final int id;
  late final Area area;
  late final String name;
  late final String code;
  late final String emblemUrl;
  late final String plan;
  late final CurrentSeason currentSeason;
  late final int numberOfAvailableSeasons;
  late final String lastUpdated;

  Competitions(
      {required this.id,
      required this.area,
      required this.name,
      required this.code,
      required this.emblemUrl,
      required this.plan,
      required this.currentSeason,
      required this.numberOfAvailableSeasons,
      required this.lastUpdated});

  @override
  // TODO: implement props
  List<Object> get props => [
        id,
        area,
        name,
        code,
        emblemUrl,
        plan,
        currentSeason,
        numberOfAvailableSeasons,
        lastUpdated
      ];
}
