import 'package:flutter_subway/data/data_source/subway_api.dart';
import 'package:flutter_subway/data/dto/subway_dto.dart';
import 'package:flutter_subway/data/mapper/subway_mapper.dart';
import 'package:flutter_subway/data/model/subway.dart';
import 'package:flutter_subway/data/repository/subway_repository.dart';

class SubwayRepositoryImpl implements SubwayRepository {
  final SubwayApi _api;

  @override
  Future<List<Subway>> getSubwaysInfo(String query) async {
    final SubwayDto dto = await _api.getSubwayDto(query);

    if (dto.realtimePositionList == null) {
      return [];
    }

    return dto.realtimePositionList!.map((e) => e.toSubway()).toList();
  }

  const SubwayRepositoryImpl({
    required SubwayApi api,
  }) : _api = api;
}
