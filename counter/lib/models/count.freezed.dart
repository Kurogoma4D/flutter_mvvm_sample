// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CounterStateTearOff {
  const _$CounterStateTearOff();

// ignore: unused_element
  _CounterState call(
      {int count = 0, @required DateTime savedAt, bool isLoaded = false}) {
    return _CounterState(
      count: count,
      savedAt: savedAt,
      isLoaded: isLoaded,
    );
  }
}

// ignore: unused_element
const $CounterState = _$CounterStateTearOff();

mixin _$CounterState {
  int get count;
  DateTime get savedAt;
  bool get isLoaded;

  $CounterStateCopyWith<CounterState> get copyWith;
}

abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
  $Res call({int count, DateTime savedAt, bool isLoaded});
}

class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;

  @override
  $Res call({
    Object count = freezed,
    Object savedAt = freezed,
    Object isLoaded = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      savedAt: savedAt == freezed ? _value.savedAt : savedAt as DateTime,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
    ));
  }
}

abstract class _$CounterStateCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$CounterStateCopyWith(
          _CounterState value, $Res Function(_CounterState) then) =
      __$CounterStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, DateTime savedAt, bool isLoaded});
}

class __$CounterStateCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res>
    implements _$CounterStateCopyWith<$Res> {
  __$CounterStateCopyWithImpl(
      _CounterState _value, $Res Function(_CounterState) _then)
      : super(_value, (v) => _then(v as _CounterState));

  @override
  _CounterState get _value => super._value as _CounterState;

  @override
  $Res call({
    Object count = freezed,
    Object savedAt = freezed,
    Object isLoaded = freezed,
  }) {
    return _then(_CounterState(
      count: count == freezed ? _value.count : count as int,
      savedAt: savedAt == freezed ? _value.savedAt : savedAt as DateTime,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
    ));
  }
}

class _$_CounterState with DiagnosticableTreeMixin implements _CounterState {
  const _$_CounterState(
      {this.count = 0, @required this.savedAt, this.isLoaded = false})
      : assert(count != null),
        assert(savedAt != null),
        assert(isLoaded != null);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @override
  final DateTime savedAt;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoaded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CounterState(count: $count, savedAt: $savedAt, isLoaded: $isLoaded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CounterState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('savedAt', savedAt))
      ..add(DiagnosticsProperty('isLoaded', isLoaded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CounterState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.savedAt, savedAt) ||
                const DeepCollectionEquality()
                    .equals(other.savedAt, savedAt)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(savedAt) ^
      const DeepCollectionEquality().hash(isLoaded);

  @override
  _$CounterStateCopyWith<_CounterState> get copyWith =>
      __$CounterStateCopyWithImpl<_CounterState>(this, _$identity);
}

abstract class _CounterState implements CounterState {
  const factory _CounterState(
      {int count, @required DateTime savedAt, bool isLoaded}) = _$_CounterState;

  @override
  int get count;
  @override
  DateTime get savedAt;
  @override
  bool get isLoaded;
  @override
  _$CounterStateCopyWith<_CounterState> get copyWith;
}
