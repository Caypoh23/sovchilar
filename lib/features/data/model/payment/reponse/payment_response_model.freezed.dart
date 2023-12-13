// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentResponseModel _$PaymentResponseModelFromJson(Map<String, dynamic> json) {
  return _PaymentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponseModel {
  String? get transactionId => throw _privateConstructorUsedError;
  String? get otpSentPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'session')
  String? get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentResponseModelCopyWith<PaymentResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResponseModelCopyWith<$Res> {
  factory $PaymentResponseModelCopyWith(PaymentResponseModel value,
          $Res Function(PaymentResponseModel) then) =
      _$PaymentResponseModelCopyWithImpl<$Res, PaymentResponseModel>;
  @useResult
  $Res call(
      {String? transactionId,
      String? otpSentPhone,
      @JsonKey(name: 'session') String? sessionId});
}

/// @nodoc
class _$PaymentResponseModelCopyWithImpl<$Res,
        $Val extends PaymentResponseModel>
    implements $PaymentResponseModelCopyWith<$Res> {
  _$PaymentResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? otpSentPhone = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      otpSentPhone: freezed == otpSentPhone
          ? _value.otpSentPhone
          : otpSentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentResponseModelImplCopyWith<$Res>
    implements $PaymentResponseModelCopyWith<$Res> {
  factory _$$PaymentResponseModelImplCopyWith(_$PaymentResponseModelImpl value,
          $Res Function(_$PaymentResponseModelImpl) then) =
      __$$PaymentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? transactionId,
      String? otpSentPhone,
      @JsonKey(name: 'session') String? sessionId});
}

/// @nodoc
class __$$PaymentResponseModelImplCopyWithImpl<$Res>
    extends _$PaymentResponseModelCopyWithImpl<$Res, _$PaymentResponseModelImpl>
    implements _$$PaymentResponseModelImplCopyWith<$Res> {
  __$$PaymentResponseModelImplCopyWithImpl(_$PaymentResponseModelImpl _value,
      $Res Function(_$PaymentResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = freezed,
    Object? otpSentPhone = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_$PaymentResponseModelImpl(
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      otpSentPhone: freezed == otpSentPhone
          ? _value.otpSentPhone
          : otpSentPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentResponseModelImpl implements _PaymentResponseModel {
  const _$PaymentResponseModelImpl(
      {this.transactionId,
      this.otpSentPhone,
      @JsonKey(name: 'session') this.sessionId});

  factory _$PaymentResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResponseModelImplFromJson(json);

  @override
  final String? transactionId;
  @override
  final String? otpSentPhone;
  @override
  @JsonKey(name: 'session')
  final String? sessionId;

  @override
  String toString() {
    return 'PaymentResponseModel(transactionId: $transactionId, otpSentPhone: $otpSentPhone, sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResponseModelImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.otpSentPhone, otpSentPhone) ||
                other.otpSentPhone == otpSentPhone) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, transactionId, otpSentPhone, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResponseModelImplCopyWith<_$PaymentResponseModelImpl>
      get copyWith =>
          __$$PaymentResponseModelImplCopyWithImpl<_$PaymentResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentResponseModel implements PaymentResponseModel {
  const factory _PaymentResponseModel(
          {final String? transactionId,
          final String? otpSentPhone,
          @JsonKey(name: 'session') final String? sessionId}) =
      _$PaymentResponseModelImpl;

  factory _PaymentResponseModel.fromJson(Map<String, dynamic> json) =
      _$PaymentResponseModelImpl.fromJson;

  @override
  String? get transactionId;
  @override
  String? get otpSentPhone;
  @override
  @JsonKey(name: 'session')
  String? get sessionId;
  @override
  @JsonKey(ignore: true)
  _$$PaymentResponseModelImplCopyWith<_$PaymentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
