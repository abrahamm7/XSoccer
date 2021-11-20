import 'package:equatable/equatable.dart';

import 'competitions.dart';
import 'filters.dart';

class Leagues extends Equatable {
  Leagues({
    required this.count,
    required this.filters,
    required this.competitions,
  });
  late final int count;
  late final Filters filters;
  late final List<Competitions> competitions;

  @override
  // TODO: implement props
  List<Object> get props => [count, filters, competitions];
}
