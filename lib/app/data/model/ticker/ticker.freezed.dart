// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ticker _$TickerFromJson(Map<String, dynamic> json) {
  return _Ticker.fromJson(json);
}

/// @nodoc
mixin _$Ticker {
  String get name => throw _privateConstructorUsedError;
  double? get percentageCurrent => throw _privateConstructorUsedError;
  double? get percentagePlanned => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TickerCopyWith<Ticker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickerCopyWith<$Res> {
  factory $TickerCopyWith(Ticker value, $Res Function(Ticker) then) =
      _$TickerCopyWithImpl<$Res, Ticker>;
  @useResult
  $Res call(
      {String name,
      double? percentageCurrent,
      double? percentagePlanned,
      double? price,
      String? date,
      double? quantity,
      double? total});
}

/// @nodoc
class _$TickerCopyWithImpl<$Res, $Val extends Ticker>
    implements $TickerCopyWith<$Res> {
  _$TickerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? percentageCurrent = freezed,
    Object? percentagePlanned = freezed,
    Object? price = freezed,
    Object? date = freezed,
    Object? quantity = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      percentageCurrent: freezed == percentageCurrent
          ? _value.percentageCurrent
          : percentageCurrent // ignore: cast_nullable_to_non_nullable
              as double?,
      percentagePlanned: freezed == percentagePlanned
          ? _value.percentagePlanned
          : percentagePlanned // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TickerCopyWith<$Res> implements $TickerCopyWith<$Res> {
  factory _$$_TickerCopyWith(_$_Ticker value, $Res Function(_$_Ticker) then) =
      __$$_TickerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double? percentageCurrent,
      double? percentagePlanned,
      double? price,
      String? date,
      double? quantity,
      double? total});
}

/// @nodoc
class __$$_TickerCopyWithImpl<$Res>
    extends _$TickerCopyWithImpl<$Res, _$_Ticker>
    implements _$$_TickerCopyWith<$Res> {
  __$$_TickerCopyWithImpl(_$_Ticker _value, $Res Function(_$_Ticker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? percentageCurrent = freezed,
    Object? percentagePlanned = freezed,
    Object? price = freezed,
    Object? date = freezed,
    Object? quantity = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_Ticker(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      percentageCurrent: freezed == percentageCurrent
          ? _value.percentageCurrent
          : percentageCurrent // ignore: cast_nullable_to_non_nullable
              as double?,
      percentagePlanned: freezed == percentagePlanned
          ? _value.percentagePlanned
          : percentagePlanned // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ticker with DiagnosticableTreeMixin implements _Ticker {
  const _$_Ticker(
      {required this.name,
      this.percentageCurrent,
      this.percentagePlanned,
      this.price,
      this.date,
      this.quantity,
      this.total});

  factory _$_Ticker.fromJson(Map<String, dynamic> json) =>
      _$$_TickerFromJson(json);

  @override
  final String name;
  @override
  final double? percentageCurrent;
  @override
  final double? percentagePlanned;
  @override
  final double? price;
  @override
  final String? date;
  @override
  final double? quantity;
  @override
  final double? total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ticker(name: $name, percentageCurrent: $percentageCurrent, percentagePlanned: $percentagePlanned, price: $price, date: $date, quantity: $quantity, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ticker'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('percentageCurrent', percentageCurrent))
      ..add(DiagnosticsProperty('percentagePlanned', percentagePlanned))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ticker &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.percentageCurrent, percentageCurrent) ||
                other.percentageCurrent == percentageCurrent) &&
            (identical(other.percentagePlanned, percentagePlanned) ||
                other.percentagePlanned == percentagePlanned) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, percentageCurrent,
      percentagePlanned, price, date, quantity, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TickerCopyWith<_$_Ticker> get copyWith =>
      __$$_TickerCopyWithImpl<_$_Ticker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TickerToJson(
      this,
    );
  }
}

abstract class _Ticker implements Ticker {
  const factory _Ticker(
      {required final String name,
      final double? percentageCurrent,
      final double? percentagePlanned,
      final double? price,
      final String? date,
      final double? quantity,
      final double? total}) = _$_Ticker;

  factory _Ticker.fromJson(Map<String, dynamic> json) = _$_Ticker.fromJson;

  @override
  String get name;
  @override
  double? get percentageCurrent;
  @override
  double? get percentagePlanned;
  @override
  double? get price;
  @override
  String? get date;
  @override
  double? get quantity;
  @override
  double? get total;
  @override
  @JsonKey(ignore: true)
  _$$_TickerCopyWith<_$_Ticker> get copyWith =>
      throw _privateConstructorUsedError;
}
