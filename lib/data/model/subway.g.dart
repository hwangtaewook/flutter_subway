// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subway.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubwayImpl _$$SubwayImplFromJson(Map<String, dynamic> json) => _$SubwayImpl(
      stationName: json['stationName'] as String,
      trainStatus: json['trainStatus'] as String,
      destination: json['destination'] as String,
      line: json['line'] as String,
    );

Map<String, dynamic> _$$SubwayImplToJson(_$SubwayImpl instance) =>
    <String, dynamic>{
      'stationName': instance.stationName,
      'trainStatus': instance.trainStatus,
      'destination': instance.destination,
      'line': instance.line,
    };
