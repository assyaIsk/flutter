// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vegetables.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Vegetables {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  Units get unit => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  set isFavorite(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VegetablesCopyWith<Vegetables> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VegetablesCopyWith<$Res> {
  factory $VegetablesCopyWith(
          Vegetables value, $Res Function(Vegetables) then) =
      _$VegetablesCopyWithImpl<$Res, Vegetables>;
  @useResult
  $Res call(
      {String name,
      double price,
      Units unit,
      String imageUrl,
      String text,
      bool isFavorite});
}

/// @nodoc
class _$VegetablesCopyWithImpl<$Res, $Val extends Vegetables>
    implements $VegetablesCopyWith<$Res> {
  _$VegetablesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? unit = null,
    Object? imageUrl = null,
    Object? text = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Units,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VegetablesImplCopyWith<$Res>
    implements $VegetablesCopyWith<$Res> {
  factory _$$VegetablesImplCopyWith(
          _$VegetablesImpl value, $Res Function(_$VegetablesImpl) then) =
      __$$VegetablesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      double price,
      Units unit,
      String imageUrl,
      String text,
      bool isFavorite});
}

/// @nodoc
class __$$VegetablesImplCopyWithImpl<$Res>
    extends _$VegetablesCopyWithImpl<$Res, _$VegetablesImpl>
    implements _$$VegetablesImplCopyWith<$Res> {
  __$$VegetablesImplCopyWithImpl(
      _$VegetablesImpl _value, $Res Function(_$VegetablesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? unit = null,
    Object? imageUrl = null,
    Object? text = null,
    Object? isFavorite = null,
  }) {
    return _then(_$VegetablesImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Units,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VegetablesImpl implements _Vegetables {
  _$VegetablesImpl(
      {required this.name,
      required this.price,
      required this.unit,
      required this.imageUrl,
      required this.text,
      this.isFavorite = false});

  @override
  final String name;
  @override
  final double price;
  @override
  final Units unit;
  @override
  final String imageUrl;
  @override
  final String text;
  @override
  @JsonKey()
  bool isFavorite;

  @override
  String toString() {
    return 'Vegetables(name: $name, price: $price, unit: $unit, imageUrl: $imageUrl, text: $text, isFavorite: $isFavorite)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VegetablesImplCopyWith<_$VegetablesImpl> get copyWith =>
      __$$VegetablesImplCopyWithImpl<_$VegetablesImpl>(this, _$identity);
}

abstract class _Vegetables implements Vegetables {
  factory _Vegetables(
      {required final String name,
      required final double price,
      required final Units unit,
      required final String imageUrl,
      required final String text,
      bool isFavorite}) = _$VegetablesImpl;

  @override
  String get name;
  @override
  double get price;
  @override
  Units get unit;
  @override
  String get imageUrl;
  @override
  String get text;
  @override
  bool get isFavorite;
  set isFavorite(bool value);
  @override
  @JsonKey(ignore: true)
  _$$VegetablesImplCopyWith<_$VegetablesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
