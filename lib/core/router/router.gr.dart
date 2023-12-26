// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:todo_list/scopes/tasks/di/wrapper.dart' as _i3;
import 'package:todo_list/scopes/tasks/features/task_create/task_create_widget.dart'
    as _i1;
import 'package:todo_list/scopes/tasks/features/tasks_list/tasks_list_widget.dart'
    as _i2;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    TaskCreateRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.TaskCreateScreenWidget(),
      );
    },
    TasksListRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.TasksListScreenWidget(),
      );
    },
    TasksRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.TasksScope(),
      );
    },
  };
}

/// generated route for
/// [_i1.TaskCreateScreenWidget]
class TaskCreateRoute extends _i4.PageRouteInfo<void> {
  const TaskCreateRoute({List<_i4.PageRouteInfo>? children})
      : super(
          TaskCreateRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaskCreateRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.TasksListScreenWidget]
class TasksListRoute extends _i4.PageRouteInfo<void> {
  const TasksListRoute({List<_i4.PageRouteInfo>? children})
      : super(
          TasksListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TasksListRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.TasksScope]
class TasksRoute extends _i4.PageRouteInfo<void> {
  const TasksRoute({List<_i4.PageRouteInfo>? children})
      : super(
          TasksRoute.name,
          initialChildren: children,
        );

  static const String name = 'TasksRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
