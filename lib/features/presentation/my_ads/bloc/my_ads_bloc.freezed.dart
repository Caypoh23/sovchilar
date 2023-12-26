// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_ads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyAdsState {
  Status get status => throw _privateConstructorUsedError;
  List<AdResponseModel> get myAdList => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyAdsStateCopyWith<MyAdsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAdsStateCopyWith<$Res> {
  factory $MyAdsStateCopyWith(
          MyAdsState value, $Res Function(MyAdsState) then) =
      _$MyAdsStateCopyWithImpl<$Res, MyAdsState>;
  @useResult
  $Res call({Status status, List<AdResponseModel> myAdList, Error? error});
}

/// @nodoc
class _$MyAdsStateCopyWithImpl<$Res, $Val extends MyAdsState>
    implements $MyAdsStateCopyWith<$Res> {
  _$MyAdsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? myAdList = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      myAdList: null == myAdList
          ? _value.myAdList
          : myAdList // ignore: cast_nullable_to_non_nullable
              as List<AdResponseModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyAdsStateImplCopyWith<$Res>
    implements $MyAdsStateCopyWith<$Res> {
  factory _$$MyAdsStateImplCopyWith(
          _$MyAdsStateImpl value, $Res Function(_$MyAdsStateImpl) then) =
      __$$MyAdsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<AdResponseModel> myAdList, Error? error});
}

/// @nodoc
class __$$MyAdsStateImplCopyWithImpl<$Res>
    extends _$MyAdsStateCopyWithImpl<$Res, _$MyAdsStateImpl>
    implements _$$MyAdsStateImplCopyWith<$Res> {
  __$$MyAdsStateImplCopyWithImpl(
      _$MyAdsStateImpl _value, $Res Function(_$MyAdsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? myAdList = null,
    Object? error = freezed,
  }) {
    return _then(_$MyAdsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      myAdList: null == myAdList
          ? _value._myAdList
          : myAdList // ignore: cast_nullable_to_non_nullable
              as List<AdResponseModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$MyAdsStateImpl implements _MyAdsState {
  const _$MyAdsStateImpl(
      {this.status = Status.initial,
      final List<AdResponseModel> myAdList = const [],
      this.error})
      : _myAdList = myAdList;

  @override
  @JsonKey()
  final Status status;
  final List<AdResponseModel> _myAdList;
  @override
  @JsonKey()
  List<AdResponseModel> get myAdList {
    if (_myAdList is EqualUnmodifiableListView) return _myAdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myAdList);
  }

  @override
  final Error? error;

  @override
  String toString() {
    return 'MyAdsState(status: $status, myAdList: $myAdList, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAdsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._myAdList, _myAdList) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_myAdList), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAdsStateImplCopyWith<_$MyAdsStateImpl> get copyWith =>
      __$$MyAdsStateImplCopyWithImpl<_$MyAdsStateImpl>(this, _$identity);
}

abstract class _MyAdsState implements MyAdsState {
  const factory _MyAdsState(
      {final Status status,
      final List<AdResponseModel> myAdList,
      final Error? error}) = _$MyAdsStateImpl;

  @override
  Status get status;
  @override
  List<AdResponseModel> get myAdList;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$MyAdsStateImplCopyWith<_$MyAdsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
