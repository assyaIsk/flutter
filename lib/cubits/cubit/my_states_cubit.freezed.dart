// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_states_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Vegetables vegetable, bool isFavorite) favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Vegetables vegetable, bool isFavorite)? favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Vegetables vegetable, bool isFavorite)? favorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Favorite value) favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Favorite value)? favorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FavoritesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Vegetables vegetable, bool isFavorite) favorite,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Vegetables vegetable, bool isFavorite)? favorite,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Vegetables vegetable, bool isFavorite)? favorite,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Favorite value) favorite,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Favorite value)? favorite,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoritesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FavoriteImplCopyWith<$Res> {
  factory _$$FavoriteImplCopyWith(
          _$FavoriteImpl value, $Res Function(_$FavoriteImpl) then) =
      __$$FavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Vegetables vegetable, bool isFavorite});

  $VegetablesCopyWith<$Res> get vegetable;
}

/// @nodoc
class __$$FavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoriteImpl>
    implements _$$FavoriteImplCopyWith<$Res> {
  __$$FavoriteImplCopyWithImpl(
      _$FavoriteImpl _value, $Res Function(_$FavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vegetable = null,
    Object? isFavorite = null,
  }) {
    return _then(_$FavoriteImpl(
      null == vegetable
          ? _value.vegetable
          : vegetable // ignore: cast_nullable_to_non_nullable
              as Vegetables,
      null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VegetablesCopyWith<$Res> get vegetable {
    return $VegetablesCopyWith<$Res>(_value.vegetable, (value) {
      return _then(_value.copyWith(vegetable: value));
    });
  }
}

/// @nodoc

class _$FavoriteImpl implements _Favorite {
  const _$FavoriteImpl(this.vegetable, this.isFavorite);

  @override
  final Vegetables vegetable;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'FavoritesState.favorite(vegetable: $vegetable, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteImpl &&
            (identical(other.vegetable, vegetable) ||
                other.vegetable == vegetable) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vegetable, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteImplCopyWith<_$FavoriteImpl> get copyWith =>
      __$$FavoriteImplCopyWithImpl<_$FavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Vegetables vegetable, bool isFavorite) favorite,
  }) {
    return favorite(vegetable, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Vegetables vegetable, bool isFavorite)? favorite,
  }) {
    return favorite?.call(vegetable, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Vegetables vegetable, bool isFavorite)? favorite,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(vegetable, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Favorite value) favorite,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Favorite value)? favorite,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Favorite value)? favorite,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class _Favorite implements FavoritesState {
  const factory _Favorite(final Vegetables vegetable, final bool isFavorite) =
      _$FavoriteImpl;

  Vegetables get vegetable;
  bool get isFavorite;
  @JsonKey(ignore: true)
  _$$FavoriteImplCopyWith<_$FavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selectedCategory,
    required TResult Function() unselectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? selectedCategory,
    TResult? Function()? unselectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectedCategory,
    TResult Function()? unselectCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCategory value) initial,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_UnselectCategory value) unselectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCategory value)? initial,
    TResult? Function(_SelectedCategory value)? selectedCategory,
    TResult? Function(_UnselectCategory value)? unselectCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCategory value)? initial,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_UnselectCategory value)? unselectCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCategoryImplCopyWith<$Res> {
  factory _$$InitialCategoryImplCopyWith(_$InitialCategoryImpl value,
          $Res Function(_$InitialCategoryImpl) then) =
      __$$InitialCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCategoryImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$InitialCategoryImpl>
    implements _$$InitialCategoryImplCopyWith<$Res> {
  __$$InitialCategoryImplCopyWithImpl(
      _$InitialCategoryImpl _value, $Res Function(_$InitialCategoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCategoryImpl implements _InitialCategory {
  const _$InitialCategoryImpl();

  @override
  String toString() {
    return 'CategoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selectedCategory,
    required TResult Function() unselectCategory,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? selectedCategory,
    TResult? Function()? unselectCategory,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectedCategory,
    TResult Function()? unselectCategory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCategory value) initial,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_UnselectCategory value) unselectCategory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCategory value)? initial,
    TResult? Function(_SelectedCategory value)? selectedCategory,
    TResult? Function(_UnselectCategory value)? unselectCategory,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCategory value)? initial,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_UnselectCategory value)? unselectCategory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCategory implements CategoryState {
  const factory _InitialCategory() = _$InitialCategoryImpl;
}

/// @nodoc
abstract class _$$SelectedCategoryImplCopyWith<$Res> {
  factory _$$SelectedCategoryImplCopyWith(_$SelectedCategoryImpl value,
          $Res Function(_$SelectedCategoryImpl) then) =
      __$$SelectedCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectedCategoryImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$SelectedCategoryImpl>
    implements _$$SelectedCategoryImplCopyWith<$Res> {
  __$$SelectedCategoryImplCopyWithImpl(_$SelectedCategoryImpl _value,
      $Res Function(_$SelectedCategoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectedCategoryImpl implements _SelectedCategory {
  const _$SelectedCategoryImpl();

  @override
  String toString() {
    return 'CategoryState.selectedCategory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectedCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selectedCategory,
    required TResult Function() unselectCategory,
  }) {
    return selectedCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? selectedCategory,
    TResult? Function()? unselectCategory,
  }) {
    return selectedCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectedCategory,
    TResult Function()? unselectCategory,
    required TResult orElse(),
  }) {
    if (selectedCategory != null) {
      return selectedCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCategory value) initial,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_UnselectCategory value) unselectCategory,
  }) {
    return selectedCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCategory value)? initial,
    TResult? Function(_SelectedCategory value)? selectedCategory,
    TResult? Function(_UnselectCategory value)? unselectCategory,
  }) {
    return selectedCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCategory value)? initial,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_UnselectCategory value)? unselectCategory,
    required TResult orElse(),
  }) {
    if (selectedCategory != null) {
      return selectedCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectedCategory implements CategoryState {
  const factory _SelectedCategory() = _$SelectedCategoryImpl;
}

/// @nodoc
abstract class _$$UnselectCategoryImplCopyWith<$Res> {
  factory _$$UnselectCategoryImplCopyWith(_$UnselectCategoryImpl value,
          $Res Function(_$UnselectCategoryImpl) then) =
      __$$UnselectCategoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnselectCategoryImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$UnselectCategoryImpl>
    implements _$$UnselectCategoryImplCopyWith<$Res> {
  __$$UnselectCategoryImplCopyWithImpl(_$UnselectCategoryImpl _value,
      $Res Function(_$UnselectCategoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnselectCategoryImpl implements _UnselectCategory {
  const _$UnselectCategoryImpl();

  @override
  String toString() {
    return 'CategoryState.unselectCategory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnselectCategoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() selectedCategory,
    required TResult Function() unselectCategory,
  }) {
    return unselectCategory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? selectedCategory,
    TResult? Function()? unselectCategory,
  }) {
    return unselectCategory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? selectedCategory,
    TResult Function()? unselectCategory,
    required TResult orElse(),
  }) {
    if (unselectCategory != null) {
      return unselectCategory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCategory value) initial,
    required TResult Function(_SelectedCategory value) selectedCategory,
    required TResult Function(_UnselectCategory value) unselectCategory,
  }) {
    return unselectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCategory value)? initial,
    TResult? Function(_SelectedCategory value)? selectedCategory,
    TResult? Function(_UnselectCategory value)? unselectCategory,
  }) {
    return unselectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCategory value)? initial,
    TResult Function(_SelectedCategory value)? selectedCategory,
    TResult Function(_UnselectCategory value)? unselectCategory,
    required TResult orElse(),
  }) {
    if (unselectCategory != null) {
      return unselectCategory(this);
    }
    return orElse();
  }
}

abstract class _UnselectCategory implements CategoryState {
  const factory _UnselectCategory() = _$UnselectCategoryImpl;
}
