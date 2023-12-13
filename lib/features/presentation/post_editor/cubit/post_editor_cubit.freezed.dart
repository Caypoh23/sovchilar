// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_editor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostEditorState {
  Status get status => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  MaritalStatus? get maritalStatus => throw _privateConstructorUsedError;
  bool? get hasChildren => throw _privateConstructorUsedError;
  CountriesEnum? get country => throw _privateConstructorUsedError;
  CitiesEnum? get city => throw _privateConstructorUsedError;
  Error? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostEditorStateCopyWith<PostEditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEditorStateCopyWith<$Res> {
  factory $PostEditorStateCopyWith(
          PostEditorState value, $Res Function(PostEditorState) then) =
      _$PostEditorStateCopyWithImpl<$Res, PostEditorState>;
  @useResult
  $Res call(
      {Status status,
      Gender gender,
      MaritalStatus? maritalStatus,
      bool? hasChildren,
      CountriesEnum? country,
      CitiesEnum? city,
      Error? error});
}

/// @nodoc
class _$PostEditorStateCopyWithImpl<$Res, $Val extends PostEditorState>
    implements $PostEditorStateCopyWith<$Res> {
  _$PostEditorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? gender = null,
    Object? maritalStatus = freezed,
    Object? hasChildren = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as MaritalStatus?,
      hasChildren: freezed == hasChildren
          ? _value.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountriesEnum?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CitiesEnum?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostEditorStateImplCopyWith<$Res>
    implements $PostEditorStateCopyWith<$Res> {
  factory _$$PostEditorStateImplCopyWith(_$PostEditorStateImpl value,
          $Res Function(_$PostEditorStateImpl) then) =
      __$$PostEditorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Gender gender,
      MaritalStatus? maritalStatus,
      bool? hasChildren,
      CountriesEnum? country,
      CitiesEnum? city,
      Error? error});
}

/// @nodoc
class __$$PostEditorStateImplCopyWithImpl<$Res>
    extends _$PostEditorStateCopyWithImpl<$Res, _$PostEditorStateImpl>
    implements _$$PostEditorStateImplCopyWith<$Res> {
  __$$PostEditorStateImplCopyWithImpl(
      _$PostEditorStateImpl _value, $Res Function(_$PostEditorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? gender = null,
    Object? maritalStatus = freezed,
    Object? hasChildren = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? error = freezed,
  }) {
    return _then(_$PostEditorStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as MaritalStatus?,
      hasChildren: freezed == hasChildren
          ? _value.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountriesEnum?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CitiesEnum?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$PostEditorStateImpl implements _PostEditorState {
  const _$PostEditorStateImpl(
      {this.status = Status.initial,
      this.gender = Gender.male,
      this.maritalStatus,
      this.hasChildren,
      this.country,
      this.city,
      this.error});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Gender gender;
  @override
  final MaritalStatus? maritalStatus;
  @override
  final bool? hasChildren;
  @override
  final CountriesEnum? country;
  @override
  final CitiesEnum? city;
  @override
  final Error? error;

  @override
  String toString() {
    return 'PostEditorState(status: $status, gender: $gender, maritalStatus: $maritalStatus, hasChildren: $hasChildren, country: $country, city: $city, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostEditorStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, gender, maritalStatus,
      hasChildren, country, city, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostEditorStateImplCopyWith<_$PostEditorStateImpl> get copyWith =>
      __$$PostEditorStateImplCopyWithImpl<_$PostEditorStateImpl>(
          this, _$identity);
}

abstract class _PostEditorState implements PostEditorState {
  const factory _PostEditorState(
      {final Status status,
      final Gender gender,
      final MaritalStatus? maritalStatus,
      final bool? hasChildren,
      final CountriesEnum? country,
      final CitiesEnum? city,
      final Error? error}) = _$PostEditorStateImpl;

  @override
  Status get status;
  @override
  Gender get gender;
  @override
  MaritalStatus? get maritalStatus;
  @override
  bool? get hasChildren;
  @override
  CountriesEnum? get country;
  @override
  CitiesEnum? get city;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$PostEditorStateImplCopyWith<_$PostEditorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
