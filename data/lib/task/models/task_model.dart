import 'package:data/common/serializers/datetime.dart';
import 'package:domain/task/entities/task_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'task_model.g.dart';

@JsonSerializable()

/// {@template task_data_model}
/// Data model for a task.
/// {@endtemplate}
class TaskDataModel {
  /// {@macro task_data_model}
  TaskDataModel({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
  });

  /// Connect the generated [_$TaskDataModelFromJson] function to the `fromJson`
  /// factory.
  factory TaskDataModel.fromJson(Map<String, dynamic> json) => _$TaskDataModelFromJson(json);

  /// Create an empty task.
  factory TaskDataModel.empty() => TaskDataModel(
        id: const Uuid().v6(),
        title: '',
        description: '',
        createdAt: DateTime.now(),
      );

  /// Create a task from a create request.
  factory TaskDataModel.create({required String title, required String description}) => TaskDataModel(
        id: const Uuid().v6(),
        title: title,
        description: description,
        createdAt: DateTime.now(),
      );

  /// {@nodoc}
  final String id;

  /// {@nodoc}
  final String title;

  /// {@nodoc}
  final String description;

  /// {@nodoc}
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime createdAt;

  /// Connect the generated [_$TaskDataModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$TaskDataModelToJson(this);

  /// Convert a task data model to entity.
  TaskEntity get entity => TaskEntity(
        id: id,
        title: title,
        description: description,
        createdAt: createdAt,
      );
}
