import 'package:flutter_subway/data/model/subway.dart';

abstract interface class SubwayRepository {
  Future<List<Subway>> getSubwaysInfo(String query);
}