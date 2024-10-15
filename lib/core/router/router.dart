import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/router/base_route.dart';
import 'package:maids_task/features/auth/presentation/screens/login_screen.dart';
import 'package:maids_task/features/task/presentation/bloc/get_tasks/get_tasks_bloc.dart';
import 'package:maids_task/features/task/presentation/screens/tasks_screen.dart';
import 'package:maids_task/injection_container.dart';

import '../../features/auth/presentation/bloc/auth/auth_cubit.dart';

class AppRoutes {
  static const login = '/login';
  static const tasks = '/tasks';

  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case login:
        return BaseRoute(
          screen: BlocProvider(
            lazy: false,
            create: (context) => getIt<AuthCubit>(),
            child: const LoginScreen(),
          ),
        );

      case tasks:
        return BaseRoute(
          screen: BlocProvider(
            create: (context) =>
                getIt<GetTasksBloc>()..add(const GetTasksEvent.getTasks()),
            child: const TasksScreen(),
          ),
        );
      default:
        return BaseRoute(screen: Container());
    }
  }
}
