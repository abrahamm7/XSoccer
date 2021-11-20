import 'package:equatable/equatable.dart';

class Winner extends Equatable {
  late final int id;
  late final String name;
  late final String shortName;
  late final String tla;
  late final String crestUrl;

  Winner({
    required this.id,
    required this.name,
    required this.shortName,
    required this.tla,
    required this.crestUrl,
  });

  @override
  // TODO: implement props
  List<Object> get props => [id, name, shortName, tla, crestUrl];
}
