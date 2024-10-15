// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TasksResponseImpl _$$TasksResponseImplFromJson(Map<String, dynamic> json) =>
    _$TasksResponseImpl(
      todos: (json['todos'] as List<dynamic>)
          .map((e) => TasksModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      skip: (json['skip'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$TasksResponseImplToJson(_$TasksResponseImpl instance) =>
    <String, dynamic>{
      'todos': instance.todos,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
