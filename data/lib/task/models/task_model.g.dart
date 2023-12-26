// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskDataModel _$TaskDataModelFromJson(Map<String, dynamic> json) =>
    TaskDataModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: dateTimeFromJson(json['createdAt'] as int),
    );

Map<String, dynamic> _$TaskDataModelToJson(TaskDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'createdAt': dateTimeToJson(instance.createdAt),
    };
