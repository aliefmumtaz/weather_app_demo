// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherModel {
  List<WeatherDetailDaysModel> get detailDays =>
      throw _privateConstructorUsedError;
  WeatherDetailModel get detail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res>;
  $Res call(
      {List<WeatherDetailDaysModel> detailDays, WeatherDetailModel detail});

  $WeatherDetailModelCopyWith<$Res> get detail;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res> implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  final WeatherModel _value;
  // ignore: unused_field
  final $Res Function(WeatherModel) _then;

  @override
  $Res call({
    Object? detailDays = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      detailDays: detailDays == freezed
          ? _value.detailDays
          : detailDays // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetailDaysModel>,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as WeatherDetailModel,
    ));
  }

  @override
  $WeatherDetailModelCopyWith<$Res> get detail {
    return $WeatherDetailModelCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }
}

/// @nodoc
abstract class _$$_WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$_WeatherModelCopyWith(
          _$_WeatherModel value, $Res Function(_$_WeatherModel) then) =
      __$$_WeatherModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<WeatherDetailDaysModel> detailDays, WeatherDetailModel detail});

  @override
  $WeatherDetailModelCopyWith<$Res> get detail;
}

/// @nodoc
class __$$_WeatherModelCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res>
    implements _$$_WeatherModelCopyWith<$Res> {
  __$$_WeatherModelCopyWithImpl(
      _$_WeatherModel _value, $Res Function(_$_WeatherModel) _then)
      : super(_value, (v) => _then(v as _$_WeatherModel));

  @override
  _$_WeatherModel get _value => super._value as _$_WeatherModel;

  @override
  $Res call({
    Object? detailDays = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$_WeatherModel(
      detailDays: detailDays == freezed
          ? _value._detailDays
          : detailDays // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetailDaysModel>,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as WeatherDetailModel,
    ));
  }
}

/// @nodoc

class _$_WeatherModel with DiagnosticableTreeMixin implements _WeatherModel {
  const _$_WeatherModel(
      {required final List<WeatherDetailDaysModel> detailDays,
      required this.detail})
      : _detailDays = detailDays;

  final List<WeatherDetailDaysModel> _detailDays;
  @override
  List<WeatherDetailDaysModel> get detailDays {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detailDays);
  }

  @override
  final WeatherDetailModel detail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherModel(detailDays: $detailDays, detail: $detail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherModel'))
      ..add(DiagnosticsProperty('detailDays', detailDays))
      ..add(DiagnosticsProperty('detail', detail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherModel &&
            const DeepCollectionEquality()
                .equals(other._detailDays, _detailDays) &&
            const DeepCollectionEquality().equals(other.detail, detail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_detailDays),
      const DeepCollectionEquality().hash(detail));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      __$$_WeatherModelCopyWithImpl<_$_WeatherModel>(this, _$identity);
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {required final List<WeatherDetailDaysModel> detailDays,
      required final WeatherDetailModel detail}) = _$_WeatherModel;

  @override
  List<WeatherDetailDaysModel> get detailDays;
  @override
  WeatherDetailModel get detail;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherDetailModel _$WeatherDetailModelFromJson(Map<String, dynamic> json) {
  return _WeatherDetailModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherDetailModel {
  String get resolvedAddress => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDetailModelCopyWith<WeatherDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailModelCopyWith<$Res> {
  factory $WeatherDetailModelCopyWith(
          WeatherDetailModel value, $Res Function(WeatherDetailModel) then) =
      _$WeatherDetailModelCopyWithImpl<$Res>;
  $Res call({String resolvedAddress, String address, String timezone});
}

/// @nodoc
class _$WeatherDetailModelCopyWithImpl<$Res>
    implements $WeatherDetailModelCopyWith<$Res> {
  _$WeatherDetailModelCopyWithImpl(this._value, this._then);

  final WeatherDetailModel _value;
  // ignore: unused_field
  final $Res Function(WeatherDetailModel) _then;

  @override
  $Res call({
    Object? resolvedAddress = freezed,
    Object? address = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      resolvedAddress: resolvedAddress == freezed
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherDetailModelCopyWith<$Res>
    implements $WeatherDetailModelCopyWith<$Res> {
  factory _$$_WeatherDetailModelCopyWith(_$_WeatherDetailModel value,
          $Res Function(_$_WeatherDetailModel) then) =
      __$$_WeatherDetailModelCopyWithImpl<$Res>;
  @override
  $Res call({String resolvedAddress, String address, String timezone});
}

/// @nodoc
class __$$_WeatherDetailModelCopyWithImpl<$Res>
    extends _$WeatherDetailModelCopyWithImpl<$Res>
    implements _$$_WeatherDetailModelCopyWith<$Res> {
  __$$_WeatherDetailModelCopyWithImpl(
      _$_WeatherDetailModel _value, $Res Function(_$_WeatherDetailModel) _then)
      : super(_value, (v) => _then(v as _$_WeatherDetailModel));

  @override
  _$_WeatherDetailModel get _value => super._value as _$_WeatherDetailModel;

  @override
  $Res call({
    Object? resolvedAddress = freezed,
    Object? address = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_$_WeatherDetailModel(
      resolvedAddress: resolvedAddress == freezed
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDetailModel
    with DiagnosticableTreeMixin
    implements _WeatherDetailModel {
  const _$_WeatherDetailModel(
      {required this.resolvedAddress,
      required this.address,
      required this.timezone});

  factory _$_WeatherDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDetailModelFromJson(json);

  @override
  final String resolvedAddress;
  @override
  final String address;
  @override
  final String timezone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherDetailModel(resolvedAddress: $resolvedAddress, address: $address, timezone: $timezone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherDetailModel'))
      ..add(DiagnosticsProperty('resolvedAddress', resolvedAddress))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('timezone', timezone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDetailModel &&
            const DeepCollectionEquality()
                .equals(other.resolvedAddress, resolvedAddress) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.timezone, timezone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resolvedAddress),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(timezone));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherDetailModelCopyWith<_$_WeatherDetailModel> get copyWith =>
      __$$_WeatherDetailModelCopyWithImpl<_$_WeatherDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDetailModelToJson(this);
  }
}

abstract class _WeatherDetailModel implements WeatherDetailModel {
  const factory _WeatherDetailModel(
      {required final String resolvedAddress,
      required final String address,
      required final String timezone}) = _$_WeatherDetailModel;

  factory _WeatherDetailModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherDetailModel.fromJson;

  @override
  String get resolvedAddress;
  @override
  String get address;
  @override
  String get timezone;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDetailModelCopyWith<_$_WeatherDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherDetailDaysModel {
  String get dateTime => throw _privateConstructorUsedError;
  dynamic get condition => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  double get tempMax => throw _privateConstructorUsedError;
  dynamic get tempMin => throw _privateConstructorUsedError;
  dynamic get temp => throw _privateConstructorUsedError;
  dynamic get windSpeed => throw _privateConstructorUsedError;
  dynamic get feelsLike => throw _privateConstructorUsedError;
  dynamic get uvIndex => throw _privateConstructorUsedError;
  dynamic get pressure => throw _privateConstructorUsedError;
  List<WeatherDetailHoursModel> get hours => throw _privateConstructorUsedError;
  int get datetimeEpoch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherDetailDaysModelCopyWith<WeatherDetailDaysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailDaysModelCopyWith<$Res> {
  factory $WeatherDetailDaysModelCopyWith(WeatherDetailDaysModel value,
          $Res Function(WeatherDetailDaysModel) then) =
      _$WeatherDetailDaysModelCopyWithImpl<$Res>;
  $Res call(
      {String dateTime,
      dynamic condition,
      dynamic description,
      double tempMax,
      dynamic tempMin,
      dynamic temp,
      dynamic windSpeed,
      dynamic feelsLike,
      dynamic uvIndex,
      dynamic pressure,
      List<WeatherDetailHoursModel> hours,
      int datetimeEpoch});
}

/// @nodoc
class _$WeatherDetailDaysModelCopyWithImpl<$Res>
    implements $WeatherDetailDaysModelCopyWith<$Res> {
  _$WeatherDetailDaysModelCopyWithImpl(this._value, this._then);

  final WeatherDetailDaysModel _value;
  // ignore: unused_field
  final $Res Function(WeatherDetailDaysModel) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? condition = freezed,
    Object? description = freezed,
    Object? tempMax = freezed,
    Object? tempMin = freezed,
    Object? temp = freezed,
    Object? windSpeed = freezed,
    Object? feelsLike = freezed,
    Object? uvIndex = freezed,
    Object? pressure = freezed,
    Object? hours = freezed,
    Object? datetimeEpoch = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: tempMin == freezed
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as dynamic,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as dynamic,
      uvIndex: uvIndex == freezed
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetailHoursModel>,
      datetimeEpoch: datetimeEpoch == freezed
          ? _value.datetimeEpoch
          : datetimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherDetailDaysModelCopyWith<$Res>
    implements $WeatherDetailDaysModelCopyWith<$Res> {
  factory _$$_WeatherDetailDaysModelCopyWith(_$_WeatherDetailDaysModel value,
          $Res Function(_$_WeatherDetailDaysModel) then) =
      __$$_WeatherDetailDaysModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dateTime,
      dynamic condition,
      dynamic description,
      double tempMax,
      dynamic tempMin,
      dynamic temp,
      dynamic windSpeed,
      dynamic feelsLike,
      dynamic uvIndex,
      dynamic pressure,
      List<WeatherDetailHoursModel> hours,
      int datetimeEpoch});
}

/// @nodoc
class __$$_WeatherDetailDaysModelCopyWithImpl<$Res>
    extends _$WeatherDetailDaysModelCopyWithImpl<$Res>
    implements _$$_WeatherDetailDaysModelCopyWith<$Res> {
  __$$_WeatherDetailDaysModelCopyWithImpl(_$_WeatherDetailDaysModel _value,
      $Res Function(_$_WeatherDetailDaysModel) _then)
      : super(_value, (v) => _then(v as _$_WeatherDetailDaysModel));

  @override
  _$_WeatherDetailDaysModel get _value =>
      super._value as _$_WeatherDetailDaysModel;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? condition = freezed,
    Object? description = freezed,
    Object? tempMax = freezed,
    Object? tempMin = freezed,
    Object? temp = freezed,
    Object? windSpeed = freezed,
    Object? feelsLike = freezed,
    Object? uvIndex = freezed,
    Object? pressure = freezed,
    Object? hours = freezed,
    Object? datetimeEpoch = freezed,
  }) {
    return _then(_$_WeatherDetailDaysModel(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      condition: condition == freezed ? _value.condition : condition,
      description: description == freezed ? _value.description : description,
      tempMax: tempMax == freezed
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: tempMin == freezed ? _value.tempMin : tempMin,
      temp: temp == freezed ? _value.temp : temp,
      windSpeed: windSpeed == freezed ? _value.windSpeed : windSpeed,
      feelsLike: feelsLike == freezed ? _value.feelsLike : feelsLike,
      uvIndex: uvIndex == freezed ? _value.uvIndex : uvIndex,
      pressure: pressure == freezed ? _value.pressure : pressure,
      hours: hours == freezed
          ? _value._hours
          : hours // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetailHoursModel>,
      datetimeEpoch: datetimeEpoch == freezed
          ? _value.datetimeEpoch
          : datetimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WeatherDetailDaysModel
    with DiagnosticableTreeMixin
    implements _WeatherDetailDaysModel {
  const _$_WeatherDetailDaysModel(
      {required this.dateTime,
      this.condition,
      this.description,
      required this.tempMax,
      this.tempMin,
      this.temp,
      this.windSpeed,
      this.feelsLike,
      this.uvIndex,
      this.pressure,
      required final List<WeatherDetailHoursModel> hours,
      required this.datetimeEpoch})
      : _hours = hours;

  @override
  final String dateTime;
  @override
  final dynamic condition;
  @override
  final dynamic description;
  @override
  final double tempMax;
  @override
  final dynamic tempMin;
  @override
  final dynamic temp;
  @override
  final dynamic windSpeed;
  @override
  final dynamic feelsLike;
  @override
  final dynamic uvIndex;
  @override
  final dynamic pressure;
  final List<WeatherDetailHoursModel> _hours;
  @override
  List<WeatherDetailHoursModel> get hours {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hours);
  }

  @override
  final int datetimeEpoch;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherDetailDaysModel(dateTime: $dateTime, condition: $condition, description: $description, tempMax: $tempMax, tempMin: $tempMin, temp: $temp, windSpeed: $windSpeed, feelsLike: $feelsLike, uvIndex: $uvIndex, pressure: $pressure, hours: $hours, datetimeEpoch: $datetimeEpoch)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherDetailDaysModel'))
      ..add(DiagnosticsProperty('dateTime', dateTime))
      ..add(DiagnosticsProperty('condition', condition))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('tempMax', tempMax))
      ..add(DiagnosticsProperty('tempMin', tempMin))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('windSpeed', windSpeed))
      ..add(DiagnosticsProperty('feelsLike', feelsLike))
      ..add(DiagnosticsProperty('uvIndex', uvIndex))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('hours', hours))
      ..add(DiagnosticsProperty('datetimeEpoch', datetimeEpoch));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDetailDaysModel &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.tempMax, tempMax) &&
            const DeepCollectionEquality().equals(other.tempMin, tempMin) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.windSpeed, windSpeed) &&
            const DeepCollectionEquality().equals(other.feelsLike, feelsLike) &&
            const DeepCollectionEquality().equals(other.uvIndex, uvIndex) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other._hours, _hours) &&
            const DeepCollectionEquality()
                .equals(other.datetimeEpoch, datetimeEpoch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(tempMax),
      const DeepCollectionEquality().hash(tempMin),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(windSpeed),
      const DeepCollectionEquality().hash(feelsLike),
      const DeepCollectionEquality().hash(uvIndex),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(_hours),
      const DeepCollectionEquality().hash(datetimeEpoch));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherDetailDaysModelCopyWith<_$_WeatherDetailDaysModel> get copyWith =>
      __$$_WeatherDetailDaysModelCopyWithImpl<_$_WeatherDetailDaysModel>(
          this, _$identity);
}

abstract class _WeatherDetailDaysModel implements WeatherDetailDaysModel {
  const factory _WeatherDetailDaysModel(
      {required final String dateTime,
      final dynamic condition,
      final dynamic description,
      required final double tempMax,
      final dynamic tempMin,
      final dynamic temp,
      final dynamic windSpeed,
      final dynamic feelsLike,
      final dynamic uvIndex,
      final dynamic pressure,
      required final List<WeatherDetailHoursModel> hours,
      required final int datetimeEpoch}) = _$_WeatherDetailDaysModel;

  @override
  String get dateTime;
  @override
  dynamic get condition;
  @override
  dynamic get description;
  @override
  double get tempMax;
  @override
  dynamic get tempMin;
  @override
  dynamic get temp;
  @override
  dynamic get windSpeed;
  @override
  dynamic get feelsLike;
  @override
  dynamic get uvIndex;
  @override
  dynamic get pressure;
  @override
  List<WeatherDetailHoursModel> get hours;
  @override
  int get datetimeEpoch;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDetailDaysModelCopyWith<_$_WeatherDetailDaysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherDetailHoursModel _$WeatherDetailHoursModelFromJson(
    Map<String, dynamic> json) {
  return _WeatherDetailHoursModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherDetailHoursModel {
  String get dateTime => throw _privateConstructorUsedError;
  dynamic get condition => throw _privateConstructorUsedError;
  double get temp => throw _privateConstructorUsedError;
  dynamic get windSpeed => throw _privateConstructorUsedError;
  dynamic get feelsLike => throw _privateConstructorUsedError;
  dynamic get uvIndex => throw _privateConstructorUsedError;
  dynamic get pressure => throw _privateConstructorUsedError;
  int get datetimeEpoch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDetailHoursModelCopyWith<WeatherDetailHoursModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDetailHoursModelCopyWith<$Res> {
  factory $WeatherDetailHoursModelCopyWith(WeatherDetailHoursModel value,
          $Res Function(WeatherDetailHoursModel) then) =
      _$WeatherDetailHoursModelCopyWithImpl<$Res>;
  $Res call(
      {String dateTime,
      dynamic condition,
      double temp,
      dynamic windSpeed,
      dynamic feelsLike,
      dynamic uvIndex,
      dynamic pressure,
      int datetimeEpoch});
}

/// @nodoc
class _$WeatherDetailHoursModelCopyWithImpl<$Res>
    implements $WeatherDetailHoursModelCopyWith<$Res> {
  _$WeatherDetailHoursModelCopyWithImpl(this._value, this._then);

  final WeatherDetailHoursModel _value;
  // ignore: unused_field
  final $Res Function(WeatherDetailHoursModel) _then;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? condition = freezed,
    Object? temp = freezed,
    Object? windSpeed = freezed,
    Object? feelsLike = freezed,
    Object? uvIndex = freezed,
    Object? pressure = freezed,
    Object? datetimeEpoch = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      condition: condition == freezed
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as dynamic,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as dynamic,
      uvIndex: uvIndex == freezed
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as dynamic,
      datetimeEpoch: datetimeEpoch == freezed
          ? _value.datetimeEpoch
          : datetimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WeatherDetailHoursModelCopyWith<$Res>
    implements $WeatherDetailHoursModelCopyWith<$Res> {
  factory _$$_WeatherDetailHoursModelCopyWith(_$_WeatherDetailHoursModel value,
          $Res Function(_$_WeatherDetailHoursModel) then) =
      __$$_WeatherDetailHoursModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String dateTime,
      dynamic condition,
      double temp,
      dynamic windSpeed,
      dynamic feelsLike,
      dynamic uvIndex,
      dynamic pressure,
      int datetimeEpoch});
}

/// @nodoc
class __$$_WeatherDetailHoursModelCopyWithImpl<$Res>
    extends _$WeatherDetailHoursModelCopyWithImpl<$Res>
    implements _$$_WeatherDetailHoursModelCopyWith<$Res> {
  __$$_WeatherDetailHoursModelCopyWithImpl(_$_WeatherDetailHoursModel _value,
      $Res Function(_$_WeatherDetailHoursModel) _then)
      : super(_value, (v) => _then(v as _$_WeatherDetailHoursModel));

  @override
  _$_WeatherDetailHoursModel get _value =>
      super._value as _$_WeatherDetailHoursModel;

  @override
  $Res call({
    Object? dateTime = freezed,
    Object? condition = freezed,
    Object? temp = freezed,
    Object? windSpeed = freezed,
    Object? feelsLike = freezed,
    Object? uvIndex = freezed,
    Object? pressure = freezed,
    Object? datetimeEpoch = freezed,
  }) {
    return _then(_$_WeatherDetailHoursModel(
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      condition: condition == freezed ? _value.condition : condition,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: windSpeed == freezed ? _value.windSpeed : windSpeed,
      feelsLike: feelsLike == freezed ? _value.feelsLike : feelsLike,
      uvIndex: uvIndex == freezed ? _value.uvIndex : uvIndex,
      pressure: pressure == freezed ? _value.pressure : pressure,
      datetimeEpoch: datetimeEpoch == freezed
          ? _value.datetimeEpoch
          : datetimeEpoch // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDetailHoursModel
    with DiagnosticableTreeMixin
    implements _WeatherDetailHoursModel {
  const _$_WeatherDetailHoursModel(
      {required this.dateTime,
      this.condition,
      required this.temp,
      this.windSpeed,
      this.feelsLike,
      this.uvIndex,
      this.pressure,
      required this.datetimeEpoch});

  factory _$_WeatherDetailHoursModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDetailHoursModelFromJson(json);

  @override
  final String dateTime;
  @override
  final dynamic condition;
  @override
  final double temp;
  @override
  final dynamic windSpeed;
  @override
  final dynamic feelsLike;
  @override
  final dynamic uvIndex;
  @override
  final dynamic pressure;
  @override
  final int datetimeEpoch;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherDetailHoursModel(dateTime: $dateTime, condition: $condition, temp: $temp, windSpeed: $windSpeed, feelsLike: $feelsLike, uvIndex: $uvIndex, pressure: $pressure, datetimeEpoch: $datetimeEpoch)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherDetailHoursModel'))
      ..add(DiagnosticsProperty('dateTime', dateTime))
      ..add(DiagnosticsProperty('condition', condition))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('windSpeed', windSpeed))
      ..add(DiagnosticsProperty('feelsLike', feelsLike))
      ..add(DiagnosticsProperty('uvIndex', uvIndex))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('datetimeEpoch', datetimeEpoch));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDetailHoursModel &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality().equals(other.condition, condition) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.windSpeed, windSpeed) &&
            const DeepCollectionEquality().equals(other.feelsLike, feelsLike) &&
            const DeepCollectionEquality().equals(other.uvIndex, uvIndex) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality()
                .equals(other.datetimeEpoch, datetimeEpoch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(condition),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(windSpeed),
      const DeepCollectionEquality().hash(feelsLike),
      const DeepCollectionEquality().hash(uvIndex),
      const DeepCollectionEquality().hash(pressure),
      const DeepCollectionEquality().hash(datetimeEpoch));

  @JsonKey(ignore: true)
  @override
  _$$_WeatherDetailHoursModelCopyWith<_$_WeatherDetailHoursModel>
      get copyWith =>
          __$$_WeatherDetailHoursModelCopyWithImpl<_$_WeatherDetailHoursModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDetailHoursModelToJson(this);
  }
}

abstract class _WeatherDetailHoursModel implements WeatherDetailHoursModel {
  const factory _WeatherDetailHoursModel(
      {required final String dateTime,
      final dynamic condition,
      required final double temp,
      final dynamic windSpeed,
      final dynamic feelsLike,
      final dynamic uvIndex,
      final dynamic pressure,
      required final int datetimeEpoch}) = _$_WeatherDetailHoursModel;

  factory _WeatherDetailHoursModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherDetailHoursModel.fromJson;

  @override
  String get dateTime;
  @override
  dynamic get condition;
  @override
  double get temp;
  @override
  dynamic get windSpeed;
  @override
  dynamic get feelsLike;
  @override
  dynamic get uvIndex;
  @override
  dynamic get pressure;
  @override
  int get datetimeEpoch;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDetailHoursModelCopyWith<_$_WeatherDetailHoursModel>
      get copyWith => throw _privateConstructorUsedError;
}
