// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subway.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Subway _$SubwayFromJson(Map<String, dynamic> json) {
  return _Subway.fromJson(json);
}

/// @nodoc
mixin _$Subway {
  String get stationName => throw _privateConstructorUsedError;
  String get trainStatus => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  String get line => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubwayCopyWith<Subway> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubwayCopyWith<$Res> {
  factory $SubwayCopyWith(Subway value, $Res Function(Subway) then) =
      _$SubwayCopyWithImpl<$Res, Subway>;
  @useResult
  $Res call(
      {String stationName,
      String trainStatus,
      String destination,
      String line});
}

/// @nodoc
class _$SubwayCopyWithImpl<$Res, $Val extends Subway>
    implements $SubwayCopyWith<$Res> {
  _$SubwayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationName = null,
    Object? trainStatus = null,
    Object? destination = null,
    Object? line = null,
  }) {
    return _then(_value.copyWith(
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      trainStatus: null == trainStatus
          ? _value.trainStatus
          : trainStatus // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubwayImplCopyWith<$Res> implements $SubwayCopyWith<$Res> {
  factory _$$SubwayImplCopyWith(
          _$SubwayImpl value, $Res Function(_$SubwayImpl) then) =
      __$$SubwayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stationName,
      String trainStatus,
      String destination,
      String line});
}

/// @nodoc
class __$$SubwayImplCopyWithImpl<$Res>
    extends _$SubwayCopyWithImpl<$Res, _$SubwayImpl>
    implements _$$SubwayImplCopyWith<$Res> {
  __$$SubwayImplCopyWithImpl(
      _$SubwayImpl _value, $Res Function(_$SubwayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationName = null,
    Object? trainStatus = null,
    Object? destination = null,
    Object? line = null,
  }) {
    return _then(_$SubwayImpl(
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      trainStatus: null == trainStatus
          ? _value.trainStatus
          : trainStatus // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      line: null == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubwayImpl implements _Subway {
  const _$SubwayImpl(
      {required this.stationName,
      required this.trainStatus,
      required this.destination,
      required this.line});

  factory _$SubwayImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubwayImplFromJson(json);

  @override
  final String stationName;
  @override
  final String trainStatus;
  @override
  final String destination;
  @override
  final String line;

  @override
  String toString() {
    return 'Subway(stationName: $stationName, trainStatus: $trainStatus, destination: $destination, line: $line)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubwayImpl &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.trainStatus, trainStatus) ||
                other.trainStatus == trainStatus) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.line, line) || other.line == line));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stationName, trainStatus, destination, line);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubwayImplCopyWith<_$SubwayImpl> get copyWith =>
      __$$SubwayImplCopyWithImpl<_$SubwayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubwayImplToJson(
      this,
    );
  }
}

abstract class _Subway implements Subway {
  const factory _Subway(
      {required final String stationName,
      required final String trainStatus,
      required final String destination,
      required final String line}) = _$SubwayImpl;

  factory _Subway.fromJson(Map<String, dynamic> json) = _$SubwayImpl.fromJson;

  @override
  String get stationName;
  @override
  String get trainStatus;
  @override
  String get destination;
  @override
  String get line;
  @override
  @JsonKey(ignore: true)
  _$$SubwayImplCopyWith<_$SubwayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
