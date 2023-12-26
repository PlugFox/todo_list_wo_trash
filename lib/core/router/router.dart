import 'package:auto_route/auto_route.dart';
import 'package:todo_list/core/router/router.gr.dart';

/// {@template app_router}
/// App router
///
/// A router is responsible for application navigation.
/// {@endtemplate}
@AutoRouterConfig(replaceInRouteName: 'Scope|ScreenWidget,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: TasksRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: TasksListRoute.page,
              initial: true,
            ),
            AutoRoute(page: TaskCreateRoute.page),
          ],
        ),
      ];
}
