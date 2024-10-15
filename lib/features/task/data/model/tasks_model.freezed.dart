// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TasksModel _$TasksModelFromJson(Map<String, dynamic> json) {
  return _TasksModel.fromJson(json);
}

/// @nodoc
mixin _$TasksModel {
  int get id => throw _privateConstructorUsedError;
  String get todo => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  /// Serializes this TasksModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasksModelCopyWith<TasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksModelCopyWith<$Res> {
  factory $TasksModelCopyWith(
          TasksModel value, $Res Function(TasksModel) then) =
      _$TasksModelCopyWithImpl<$Res, TasksModel>;
  @useResult
  $Res call({int id, String todo, bool completed, int userId});
}

/// @nodoc
class _$TasksModelCopyWithImpl<$Res, $Val extends TasksModel>
    implements $TasksModelCopyWith<$Res> {
  _$TasksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksModelImplCopyWith<$Res>
    implements $TasksModelCopyWith<$Res> {
  factory _$$TasksModelImplCopyWith(
          _$TasksModelImpl value, $Res Function(_$TasksModelImpl) then) =
      __$$TasksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String todo, bool completed, int userId});
}

/// @nodoc
class __$$TasksModelImplCopyWithImpl<$Res>
    extends _$TasksModelCopyWithImpl<$Res, _$TasksModelImpl>
    implements _$$TasksModelImplCopyWith<$Res> {
  __$$TasksModelImplCopyWithImpl(
      _$TasksModelImpl _value, $Res Function(_$TasksModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todo = null,
    Object? completed = null,
    Object? userId = null,
  }) {
    return _then(_$TasksModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasksModelImpl implements _TasksModel {
  const _$TasksModelImpl(
      {required this.id,
      required this.todo,
      required this.completed,
      required this.userId});

  factory _$TasksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksModelImplFromJson(json);

  @override
  final int id;
  @override
  final String todo;
  @override
  final bool completed;
  @override
  final int userId;

  @override
  String toString() {
    return 'TasksModel(id: $id, todo: $todo, completed: $completed, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, todo, completed, userId);

  /// Create a copy of TasksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksModelImplCopyWith<_$TasksModelImpl> get copyWith =>
      __$$TasksModelImplCopyWithImpl<_$TasksModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksModelImplToJson(
      this,
    );
  }
}

abstract class _TasksModel implements TasksModel {
  const factory _TasksModel(
      {required final int id,
      required final String todo,
      required final bool completed,
      required final int userId}) = _$TasksModelImpl;

  factory _TasksModel.fromJson(Map<String, dynamic> json) =
      _$TasksModelImpl.fromJson;

  @override
  int get id;
  @override
  String get todo;
  @override
  bool get completed;
  @override
  int get userId;

  /// Create a copy of TasksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksModelImplCopyWith<_$TasksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
