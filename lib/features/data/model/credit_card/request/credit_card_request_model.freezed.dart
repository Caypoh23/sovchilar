// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditCardRequestModel _$CreditCardRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreditCardRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreditCardRequestModel {
  String? get cardNumber => throw _privateConstructorUsedError;
  String? get expireDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditCardRequestModelCopyWith<CreditCardRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardRequestModelCopyWith<$Res> {
  factory $CreditCardRequestModelCopyWith(CreditCardRequestModel value,
          $Res Function(CreditCardRequestModel) then) =
      _$CreditCardRequestModelCopyWithImpl<$Res, CreditCardRequestModel>;
  @useResult
  $Res call({String? cardNumber, String? expireDate});
}

/// @nodoc
class _$CreditCardRequestModelCopyWithImpl<$Res,
        $Val extends CreditCardRequestModel>
    implements $CreditCardRequestModelCopyWith<$Res> {
  _$CreditCardRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = freezed,
    Object? expireDate = freezed,
  }) {
    return _then(_value.copyWith(
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditCardRequestModelImplCopyWith<$Res>
    implements $CreditCardRequestModelCopyWith<$Res> {
  factory _$$CreditCardRequestModelImplCopyWith(
          _$CreditCardRequestModelImpl value,
          $Res Function(_$CreditCardRequestModelImpl) then) =
      __$$CreditCardRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cardNumber, String? expireDate});
}

/// @nodoc
class __$$CreditCardRequestModelImplCopyWithImpl<$Res>
    extends _$CreditCardRequestModelCopyWithImpl<$Res,
        _$CreditCardRequestModelImpl>
    implements _$$CreditCardRequestModelImplCopyWith<$Res> {
  __$$CreditCardRequestModelImplCopyWithImpl(
      _$CreditCardRequestModelImpl _value,
      $Res Function(_$CreditCardRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = freezed,
    Object? expireDate = freezed,
  }) {
    return _then(_$CreditCardRequestModelImpl(
      cardNumber: freezed == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditCardRequestModelImpl implements _CreditCardRequestModel {
  const _$CreditCardRequestModelImpl({this.cardNumber, this.expireDate});

  factory _$CreditCardRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditCardRequestModelImplFromJson(json);

  @override
  final String? cardNumber;
  @override
  final String? expireDate;

  @override
  String toString() {
    return 'CreditCardRequestModel(cardNumber: $cardNumber, expireDate: $expireDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardRequestModelImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.expireDate, expireDate) ||
                other.expireDate == expireDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardNumber, expireDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardRequestModelImplCopyWith<_$CreditCardRequestModelImpl>
      get copyWith => __$$CreditCardRequestModelImplCopyWithImpl<
          _$CreditCardRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditCardRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreditCardRequestModel implements CreditCardRequestModel {
  const factory _CreditCardRequestModel(
      {final String? cardNumber,
      final String? expireDate}) = _$CreditCardRequestModelImpl;

  factory _CreditCardRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreditCardRequestModelImpl.fromJson;

  @override
  String? get cardNumber;
  @override
  String? get expireDate;
  @override
  @JsonKey(ignore: true)
  _$$CreditCardRequestModelImplCopyWith<_$CreditCardRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
