// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:todo_list/src/feature/tasks/widget/create_task_screen.dart'
    as _i1;
import 'package:todo_list/src/feature/tasks/widget/tasks_screen.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    CreateTaskScreen.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreateTaskScreen(),
      );
    },
    TasksScreen.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.TasksScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CreateTaskScreen]
class CreateTaskScreen extends _i3.PageRouteInfo<void> {
  const CreateTaskScreen({List<_i3.PageRouteInfo>? children})
      : super(
          CreateTaskScreen.name,
          initialChildren: children,
        );

  static const String name = 'CreateTaskScreen';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.TasksScreen]
class TasksScreen extends _i3.PageRouteInfo<void> {
  const TasksScreen({List<_i3.PageRouteInfo>? children})
      : super(
          TasksScreen.name,
          initialChildren: children,
        );

  static const String name = 'TasksScreen';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
