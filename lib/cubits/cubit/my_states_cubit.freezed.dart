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
    required TResult Function(VegetablesModel vegetable) favorite,
    required TResult Function(VegetablesModel vegetable) unFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VegetablesModel vegetable)? favorite,
    TResult? Function(VegetablesModel vegetable)? unFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VegetablesModel vegetable)? favorite,
    TResult Function(VegetablesModel vegetable)? unFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_UnFavorite value) unFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_UnFavorite value)? unFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_UnFavorite value)? unFavorite,
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
    required TResult Function(VegetablesModel vegetable) favorite,
    required TResult Function(VegetablesModel vegetable) unFavorite,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VegetablesModel vegetable)? favorite,
    TResult? Function(VegetablesModel vegetable)? unFavorite,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VegetablesModel vegetable)? favorite,
    TResult Function(VegetablesModel vegetable)? unFavorite,
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
    required TResult Function(_UnFavorite value) unFavorite,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_UnFavorite value)? unFavorite,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_UnFavorite value)? unFavorite,
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
  $Res call({VegetablesModel vegetable});

  $VegetablesModelCopyWith<$Res> get vegetable;
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
  }) {
    return _then(_$FavoriteImpl(
      vegetable: null == vegetable
          ? _value.vegetable
          : vegetable // ignore: cast_nullable_to_non_nullable
              as VegetablesModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VegetablesModelCopyWith<$Res> get vegetable {
    return $VegetablesModelCopyWith<$Res>(_value.vegetable, (value) {
      return _then(_value.copyWith(vegetable: value));
    });
  }
}

/// @nodoc

class _$FavoriteImpl implements _Favorite {
  const _$FavoriteImpl({required this.vegetable});

  @override
  final VegetablesModel vegetable;

  @override
  String toString() {
    return 'FavoritesState.favorite(vegetable: $vegetable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteImpl &&
            (identical(other.vegetable, vegetable) ||
                other.vegetable == vegetable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vegetable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteImplCopyWith<_$FavoriteImpl> get copyWith =>
      __$$FavoriteImplCopyWithImpl<_$FavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VegetablesModel vegetable) favorite,
    required TResult Function(VegetablesModel vegetable) unFavorite,
  }) {
    return favorite(vegetable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VegetablesModel vegetable)? favorite,
    TResult? Function(VegetablesModel vegetable)? unFavorite,
  }) {
    return favorite?.call(vegetable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VegetablesModel vegetable)? favorite,
    TResult Function(VegetablesModel vegetable)? unFavorite,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(vegetable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_UnFavorite value) unFavorite,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_UnFavorite value)? unFavorite,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_UnFavorite value)? unFavorite,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class _Favorite implements FavoritesState {
  const factory _Favorite({required final VegetablesModel vegetable}) =
      _$FavoriteImpl;

  VegetablesModel get vegetable;
  @JsonKey(ignore: true)
  _$$FavoriteImplCopyWith<_$FavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnFavoriteImplCopyWith<$Res> {
  factory _$$UnFavoriteImplCopyWith(
          _$UnFavoriteImpl value, $Res Function(_$UnFavoriteImpl) then) =
      __$$UnFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VegetablesModel vegetable});

  $VegetablesModelCopyWith<$Res> get vegetable;
}

/// @nodoc
class __$$UnFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$UnFavoriteImpl>
    implements _$$UnFavoriteImplCopyWith<$Res> {
  __$$UnFavoriteImplCopyWithImpl(
      _$UnFavoriteImpl _value, $Res Function(_$UnFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vegetable = null,
  }) {
    return _then(_$UnFavoriteImpl(
      vegetable: null == vegetable
          ? _value.vegetable
          : vegetable // ignore: cast_nullable_to_non_nullable
              as VegetablesModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VegetablesModelCopyWith<$Res> get vegetable {
    return $VegetablesModelCopyWith<$Res>(_value.vegetable, (value) {
      return _then(_value.copyWith(vegetable: value));
    });
  }
}

/// @nodoc

class _$UnFavoriteImpl implements _UnFavorite {
  const _$UnFavoriteImpl({required this.vegetable});

  @override
  final VegetablesModel vegetable;

  @override
  String toString() {
    return 'FavoritesState.unFavorite(vegetable: $vegetable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnFavoriteImpl &&
            (identical(other.vegetable, vegetable) ||
                other.vegetable == vegetable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vegetable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnFavoriteImplCopyWith<_$UnFavoriteImpl> get copyWith =>
      __$$UnFavoriteImplCopyWithImpl<_$UnFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(VegetablesModel vegetable) favorite,
    required TResult Function(VegetablesModel vegetable) unFavorite,
  }) {
    return unFavorite(vegetable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(VegetablesModel vegetable)? favorite,
    TResult? Function(VegetablesModel vegetable)? unFavorite,
  }) {
    return unFavorite?.call(vegetable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(VegetablesModel vegetable)? favorite,
    TResult Function(VegetablesModel vegetable)? unFavorite,
    required TResult orElse(),
  }) {
    if (unFavorite != null) {
      return unFavorite(vegetable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_UnFavorite value) unFavorite,
  }) {
    return unFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_UnFavorite value)? unFavorite,
  }) {
    return unFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_UnFavorite value)? unFavorite,
    required TResult orElse(),
  }) {
    if (unFavorite != null) {
      return unFavorite(this);
    }
    return orElse();
  }
}

abstract class _UnFavorite implements FavoritesState {
  const factory _UnFavorite({required final VegetablesModel vegetable}) =
      _$UnFavoriteImpl;

  VegetablesModel get vegetable;
  @JsonKey(ignore: true)
  _$$UnFavoriteImplCopyWith<_$UnFavoriteImpl> get copyWith =>
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

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CategoryModel> categories) searchCategory,
    required TResult Function(List<VegetablesModel> vegetables) searchVegetable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CategoryModel> categories)? searchCategory,
    TResult? Function(List<VegetablesModel> vegetables)? searchVegetable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CategoryModel> categories)? searchCategory,
    TResult Function(List<VegetablesModel> vegetables)? searchVegetable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearch value) initial,
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_SearchVegetable value) searchVegetable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearch value)? initial,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_SearchVegetable value)? searchVegetable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearch value)? initial,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_SearchVegetable value)? searchVegetable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialSearchImplCopyWith<$Res> {
  factory _$$InitialSearchImplCopyWith(
          _$InitialSearchImpl value, $Res Function(_$InitialSearchImpl) then) =
      __$$InitialSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSearchImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$InitialSearchImpl>
    implements _$$InitialSearchImplCopyWith<$Res> {
  __$$InitialSearchImplCopyWithImpl(
      _$InitialSearchImpl _value, $Res Function(_$InitialSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSearchImpl implements _InitialSearch {
  const _$InitialSearchImpl();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CategoryModel> categories) searchCategory,
    required TResult Function(List<VegetablesModel> vegetables) searchVegetable,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CategoryModel> categories)? searchCategory,
    TResult? Function(List<VegetablesModel> vegetables)? searchVegetable,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CategoryModel> categories)? searchCategory,
    TResult Function(List<VegetablesModel> vegetables)? searchVegetable,
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
    required TResult Function(_InitialSearch value) initial,
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_SearchVegetable value) searchVegetable,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearch value)? initial,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_SearchVegetable value)? searchVegetable,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearch value)? initial,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_SearchVegetable value)? searchVegetable,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSearch implements SearchState {
  const factory _InitialSearch() = _$InitialSearchImpl;
}

/// @nodoc
abstract class _$$SearchCategoryImplCopyWith<$Res> {
  factory _$$SearchCategoryImplCopyWith(_$SearchCategoryImpl value,
          $Res Function(_$SearchCategoryImpl) then) =
      __$$SearchCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoryModel> categories});
}

/// @nodoc
class __$$SearchCategoryImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchCategoryImpl>
    implements _$$SearchCategoryImplCopyWith<$Res> {
  __$$SearchCategoryImplCopyWithImpl(
      _$SearchCategoryImpl _value, $Res Function(_$SearchCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$SearchCategoryImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$SearchCategoryImpl implements _SearchCategory {
  const _$SearchCategoryImpl({required final List<CategoryModel> categories})
      : _categories = categories;

  final List<CategoryModel> _categories;
  @override
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'SearchState.searchCategory(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCategoryImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCategoryImplCopyWith<_$SearchCategoryImpl> get copyWith =>
      __$$SearchCategoryImplCopyWithImpl<_$SearchCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CategoryModel> categories) searchCategory,
    required TResult Function(List<VegetablesModel> vegetables) searchVegetable,
  }) {
    return searchCategory(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CategoryModel> categories)? searchCategory,
    TResult? Function(List<VegetablesModel> vegetables)? searchVegetable,
  }) {
    return searchCategory?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CategoryModel> categories)? searchCategory,
    TResult Function(List<VegetablesModel> vegetables)? searchVegetable,
    required TResult orElse(),
  }) {
    if (searchCategory != null) {
      return searchCategory(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearch value) initial,
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_SearchVegetable value) searchVegetable,
  }) {
    return searchCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearch value)? initial,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_SearchVegetable value)? searchVegetable,
  }) {
    return searchCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearch value)? initial,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_SearchVegetable value)? searchVegetable,
    required TResult orElse(),
  }) {
    if (searchCategory != null) {
      return searchCategory(this);
    }
    return orElse();
  }
}

abstract class _SearchCategory implements SearchState {
  const factory _SearchCategory(
      {required final List<CategoryModel> categories}) = _$SearchCategoryImpl;

  List<CategoryModel> get categories;
  @JsonKey(ignore: true)
  _$$SearchCategoryImplCopyWith<_$SearchCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchVegetableImplCopyWith<$Res> {
  factory _$$SearchVegetableImplCopyWith(_$SearchVegetableImpl value,
          $Res Function(_$SearchVegetableImpl) then) =
      __$$SearchVegetableImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VegetablesModel> vegetables});
}

/// @nodoc
class __$$SearchVegetableImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchVegetableImpl>
    implements _$$SearchVegetableImplCopyWith<$Res> {
  __$$SearchVegetableImplCopyWithImpl(
      _$SearchVegetableImpl _value, $Res Function(_$SearchVegetableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vegetables = null,
  }) {
    return _then(_$SearchVegetableImpl(
      vegetables: null == vegetables
          ? _value._vegetables
          : vegetables // ignore: cast_nullable_to_non_nullable
              as List<VegetablesModel>,
    ));
  }
}

/// @nodoc

class _$SearchVegetableImpl implements _SearchVegetable {
  const _$SearchVegetableImpl({required final List<VegetablesModel> vegetables})
      : _vegetables = vegetables;

  final List<VegetablesModel> _vegetables;
  @override
  List<VegetablesModel> get vegetables {
    if (_vegetables is EqualUnmodifiableListView) return _vegetables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vegetables);
  }

  @override
  String toString() {
    return 'SearchState.searchVegetable(vegetables: $vegetables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchVegetableImpl &&
            const DeepCollectionEquality()
                .equals(other._vegetables, _vegetables));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_vegetables));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchVegetableImplCopyWith<_$SearchVegetableImpl> get copyWith =>
      __$$SearchVegetableImplCopyWithImpl<_$SearchVegetableImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CategoryModel> categories) searchCategory,
    required TResult Function(List<VegetablesModel> vegetables) searchVegetable,
  }) {
    return searchVegetable(vegetables);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<CategoryModel> categories)? searchCategory,
    TResult? Function(List<VegetablesModel> vegetables)? searchVegetable,
  }) {
    return searchVegetable?.call(vegetables);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CategoryModel> categories)? searchCategory,
    TResult Function(List<VegetablesModel> vegetables)? searchVegetable,
    required TResult orElse(),
  }) {
    if (searchVegetable != null) {
      return searchVegetable(vegetables);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSearch value) initial,
    required TResult Function(_SearchCategory value) searchCategory,
    required TResult Function(_SearchVegetable value) searchVegetable,
  }) {
    return searchVegetable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSearch value)? initial,
    TResult? Function(_SearchCategory value)? searchCategory,
    TResult? Function(_SearchVegetable value)? searchVegetable,
  }) {
    return searchVegetable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSearch value)? initial,
    TResult Function(_SearchCategory value)? searchCategory,
    TResult Function(_SearchVegetable value)? searchVegetable,
    required TResult orElse(),
  }) {
    if (searchVegetable != null) {
      return searchVegetable(this);
    }
    return orElse();
  }
}

abstract class _SearchVegetable implements SearchState {
  const factory _SearchVegetable(
          {required final List<VegetablesModel> vegetables}) =
      _$SearchVegetableImpl;

  List<VegetablesModel> get vegetables;
  @JsonKey(ignore: true)
  _$$SearchVegetableImplCopyWith<_$SearchVegetableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
