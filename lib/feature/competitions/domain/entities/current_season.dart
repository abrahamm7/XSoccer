import 'package:equatable/equatable.dart';

import 'winner.dart';

class CurrentSeason extends Equatable {
  late final int id;
  late final String startDate;
  late final String endDate;
  late final int currentMatchday;
  late final Winner winner;

  CurrentSeason({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.currentMatchday,
    required this.winner,
  });

  @override
  // TODO: implement props
  List<Object> get props => [id, startDate, endDate, currentMatchday, winner];
}
