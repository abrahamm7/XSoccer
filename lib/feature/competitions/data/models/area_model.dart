import 'package:soccerapp/feature/competitions/domain/entities/area.dart';

class AreaModel extends Area {
  AreaModel(
      {required int id,
      required String name,
      required String countryCode,
      required String ensignUrl})
      : super(
            id: id, name: name, countryCode: countryCode, ensignUrl: ensignUrl);

  factory AreaModel.fromJson(Map<String, dynamic> json) {
    return AreaModel(
        id: json['id'],
        name: json['name'],
        countryCode: json['countryCode'],
        ensignUrl: json['ensignUrl']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['countryCode'] = countryCode;
    _data['ensignUrl'] = ensignUrl;
    return _data;
  }
}
