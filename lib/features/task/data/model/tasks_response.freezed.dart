// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TasksResponse _$TasksResponseFromJson(Map<String, dynamic> json) {
  return _TasksResponse.fromJson(json);
}

/// @nodoc
mixin _$TasksResponse {
  List<TasksModel> get todos => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this TasksResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasksResponseCopyWith<TasksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksResponseCopyWith<$Res> {
  factory $TasksResponseCopyWith(
          TasksResponse value, $Res Function(TasksResponse) then) =
      _$TasksResponseCopyWithImpl<$Res, TasksResponse>;
  @useResult
  $Res call({List<TasksModel> todos, int total, int skip, int limit});
}

/// @nodoc
class _$TasksResponseCopyWithImpl<$Res, $Val extends TasksResponse>
    implements $TasksResponseCopyWith<$Res> {
  _$TasksResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TasksModel>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksResponseImplCopyWith<$Res>
    implements $TasksResponseCopyWith<$Res> {
  factory _$$TasksResponseImplCopyWith(
          _$TasksResponseImpl value, $Res Function(_$TasksResponseImpl) then) =
      __$$TasksResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TasksModel> todos, int total, int skip, int limit});
}

/// @nodoc
class __$$TasksResponseImplCopyWithImpl<$Res>
    extends _$TasksResponseCopyWithImpl<$Res, _$TasksResponseImpl>
    implements _$$TasksResponseImplCopyWith<$Res> {
  __$$TasksResponseImplCopyWithImpl(
      _$TasksResponseImpl _value, $Res Function(_$TasksResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_$TasksResponseImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TasksModel>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasksResponseImpl implements _TasksResponse {
  const _$TasksResponseImpl(
      {required final List<TasksModel> todos,
      required this.total,
      required this.skip,
      required this.limit})
      : _todos = todos;

  factory _$TasksResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksResponseImplFromJson(json);

  final List<TasksModel> _todos;
  @override
  List<TasksModel> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final int total;
  @override
  final int skip;
  @override
  final int limit;

  @override
  String toString() {
    return 'TasksResponse(todos: $todos, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksResponseImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_todos), total, skip, limit);

  /// Create a copy of TasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksResponseImplCopyWith<_$TasksResponseImpl> get copyWith =>
      __$$TasksResponseImplCopyWithImpl<_$TasksResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksResponseImplToJson(
      this,
    );
  }
}

abstract class _TasksResponse implements TasksResponse {
  const factory _TasksResponse(
      {required final List<TasksModel> todos,
      required final int total,
      required final int skip,
      required final int limit}) = _$TasksResponseImpl;

  factory _TasksResponse.fromJson(Map<String, dynamic> json) =
      _$TasksResponseImpl.fromJson;

  @override
  List<TasksModel> get todos;
  @override
  int get total;
  @override
  int get skip;
  @override
  int get limit;

  /// Create a copy of TasksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksResponseImplCopyWith<_$TasksResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
