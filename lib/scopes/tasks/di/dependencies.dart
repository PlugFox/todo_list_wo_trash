import 'package:domain/task/logic/create/task_create_bloc.dart';
import 'package:domain/task/logic/list/task_list_bloc.dart';

base class TaskDependencies {
  late final TaskCreateBloc taskCreateBloc;
  late final TaskListBloc taskListBloc;
}
