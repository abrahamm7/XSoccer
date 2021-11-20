import 'package:equatable/equatable.dart';

class Area extends Equatable {
  late final int id;
  late final String name;
  late final String countryCode;
  late final String ensignUrl;

  Area({
    required this.id,
    required this.name,
    required this.countryCode,
    required this.ensignUrl,
  });

  @override
  // TODO: implement props
  List<Object> get props => [id, name, countryCode, ensignUrl];
}
