import 'package:flutter_subway/data/model/subway.dart';

import '../dto/subway_dto.dart';

extension ToSubway on RealtimePositionList {
  Subway toSubway() {
    return Subway(
      stationName: statnNm ?? '',
      trainStatus: trainSttus ?? '',
      destination: statnTnm ?? '',
      line: subwayNm ?? '',
    );
  }
}
