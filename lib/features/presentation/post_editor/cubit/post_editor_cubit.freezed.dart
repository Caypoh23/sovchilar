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
  $Res call({Status status, Error? error});
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
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
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
  $Res call({Status status, Error? error});
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
    Object? status = freezed,
    Object? error = freezed,
  }) {
    return _then(_$PostEditorStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error?,
    ));
  }
}

/// @nodoc

class _$PostEditorStateImpl implements _PostEditorState {
  const _$PostEditorStateImpl({this.status = Status.initial, this.error});

  @override
  @JsonKey()
  final Status status;
  @override
  final Error? error;

  @override
  String toString() {
    return 'PostEditorState(status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostEditorStateImpl &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(status), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostEditorStateImplCopyWith<_$PostEditorStateImpl> get copyWith =>
      __$$PostEditorStateImplCopyWithImpl<_$PostEditorStateImpl>(
          this, _$identity);
}

abstract class _PostEditorState implements PostEditorState {
  const factory _PostEditorState({final Status status, final Error? error}) =
      _$PostEditorStateImpl;

  @override
  Status get status;
  @override
  Error? get error;
  @override
  @JsonKey(ignore: true)
  _$$PostEditorStateImplCopyWith<_$PostEditorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
