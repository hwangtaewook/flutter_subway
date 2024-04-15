import 'dart:convert';

import 'package:flutter_subway/data/dto/subway_dto.dart';
import 'package:http/http.dart' as https;

class SubwayApi {
  final https.Client _client;
  final String baseUrl =
      'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimePosition/0/5';

  Future<SubwayDto> getSubwayDto(String query) async {
    final response = await _client.get(Uri.parse('$baseUrl/$query'));

    if (response.statusCode != 200) {
      throw Exception('통신에러 코드 ${response.statusCode}');
    }
    await Future.delayed(const Duration(seconds: 2));
    return SubwayDto.fromJson(jsonDecode(response.body));
  }

  SubwayApi({
    https.Client? client,
  }) : _client = client ?? https.Client();
}
