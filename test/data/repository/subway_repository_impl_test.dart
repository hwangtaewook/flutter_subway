import 'package:flutter_subway/data/data_source/subway_api.dart';
import 'package:flutter_subway/data/repository/subway_repository.dart';
import 'package:flutter_subway/data/repository/subway_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Subway Respository method test', () async {
    final SubwayRepository repo = SubwayRepositoryImpl(api: SubwayApi());
    final data = await repo.getSubwaysInfo('1호선');
    print(data);
  });
}