// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsState {
  List<AllProductsModel> get productsData => throw _privateConstructorUsedError;
  FormzSubmissionStatus get productsStatus =>
      throw _privateConstructorUsedError;
  List<String> get productsByCotegoryData => throw _privateConstructorUsedError;
  FormzSubmissionStatus get productsByCotegoryStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call(
      {List<AllProductsModel> productsData,
      FormzSubmissionStatus productsStatus,
      List<String> productsByCotegoryData,
      FormzSubmissionStatus productsByCotegoryStatus});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsData = null,
    Object? productsStatus = null,
    Object? productsByCotegoryData = null,
    Object? productsByCotegoryStatus = null,
  }) {
    return _then(_value.copyWith(
      productsData: null == productsData
          ? _value.productsData
          : productsData // ignore: cast_nullable_to_non_nullable
              as List<AllProductsModel>,
      productsStatus: null == productsStatus
          ? _value.productsStatus
          : productsStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      productsByCotegoryData: null == productsByCotegoryData
          ? _value.productsByCotegoryData
          : productsByCotegoryData // ignore: cast_nullable_to_non_nullable
              as List<String>,
      productsByCotegoryStatus: null == productsByCotegoryStatus
          ? _value.productsByCotegoryStatus
          : productsByCotegoryStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsStateImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsStateImplCopyWith(
          _$ProductsStateImpl value, $Res Function(_$ProductsStateImpl) then) =
      __$$ProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AllProductsModel> productsData,
      FormzSubmissionStatus productsStatus,
      List<String> productsByCotegoryData,
      FormzSubmissionStatus productsByCotegoryStatus});
}

/// @nodoc
class __$$ProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateImpl>
    implements _$$ProductsStateImplCopyWith<$Res> {
  __$$ProductsStateImplCopyWithImpl(
      _$ProductsStateImpl _value, $Res Function(_$ProductsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsData = null,
    Object? productsStatus = null,
    Object? productsByCotegoryData = null,
    Object? productsByCotegoryStatus = null,
  }) {
    return _then(_$ProductsStateImpl(
      productsData: null == productsData
          ? _value._productsData
          : productsData // ignore: cast_nullable_to_non_nullable
              as List<AllProductsModel>,
      productsStatus: null == productsStatus
          ? _value.productsStatus
          : productsStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      productsByCotegoryData: null == productsByCotegoryData
          ? _value._productsByCotegoryData
          : productsByCotegoryData // ignore: cast_nullable_to_non_nullable
              as List<String>,
      productsByCotegoryStatus: null == productsByCotegoryStatus
          ? _value.productsByCotegoryStatus
          : productsByCotegoryStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$ProductsStateImpl implements _ProductsState {
  _$ProductsStateImpl(
      {required final List<AllProductsModel> productsData,
      required this.productsStatus,
      required final List<String> productsByCotegoryData,
      required this.productsByCotegoryStatus})
      : _productsData = productsData,
        _productsByCotegoryData = productsByCotegoryData;

  final List<AllProductsModel> _productsData;
  @override
  List<AllProductsModel> get productsData {
    if (_productsData is EqualUnmodifiableListView) return _productsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsData);
  }

  @override
  final FormzSubmissionStatus productsStatus;
  final List<String> _productsByCotegoryData;
  @override
  List<String> get productsByCotegoryData {
    if (_productsByCotegoryData is EqualUnmodifiableListView)
      return _productsByCotegoryData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsByCotegoryData);
  }

  @override
  final FormzSubmissionStatus productsByCotegoryStatus;

  @override
  String toString() {
    return 'ProductsState(productsData: $productsData, productsStatus: $productsStatus, productsByCotegoryData: $productsByCotegoryData, productsByCotegoryStatus: $productsByCotegoryStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._productsData, _productsData) &&
            (identical(other.productsStatus, productsStatus) ||
                other.productsStatus == productsStatus) &&
            const DeepCollectionEquality().equals(
                other._productsByCotegoryData, _productsByCotegoryData) &&
            (identical(
                    other.productsByCotegoryStatus, productsByCotegoryStatus) ||
                other.productsByCotegoryStatus == productsByCotegoryStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_productsData),
      productsStatus,
      const DeepCollectionEquality().hash(_productsByCotegoryData),
      productsByCotegoryStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      __$$ProductsStateImplCopyWithImpl<_$ProductsStateImpl>(this, _$identity);
}

abstract class _ProductsState implements ProductsState {
  factory _ProductsState(
          {required final List<AllProductsModel> productsData,
          required final FormzSubmissionStatus productsStatus,
          required final List<String> productsByCotegoryData,
          required final FormzSubmissionStatus productsByCotegoryStatus}) =
      _$ProductsStateImpl;

  @override
  List<AllProductsModel> get productsData;
  @override
  FormzSubmissionStatus get productsStatus;
  @override
  List<String> get productsByCotegoryData;
  @override
  FormzSubmissionStatus get productsByCotegoryStatus;
  @override
  @JsonKey(ignore: true)
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
