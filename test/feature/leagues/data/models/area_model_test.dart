import 'package:flutter_test/flutter_test.dart';
import 'package:soccerapp/feature/competitions/data/models/area_model.dart';
import 'package:soccerapp/feature/competitions/domain/entities/area.dart';

void main() {
  final areaModel = AreaModel(id: 1, name: '', countryCode: '', ensignUrl: '');

  test('Testing model', () {
    expect(areaModel, isA<Area>());
  });
}
