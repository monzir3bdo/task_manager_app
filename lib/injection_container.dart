import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:maids_task/core/constants/app_constants.dart';
import 'package:maids_task/core/network/clients/login_service_client.dart';
import 'package:maids_task/core/network/clients/tasks_service_client.dart';
import 'package:maids_task/features/task/data/data_source/local/tasks_local_data_source.dart';
import 'package:maids_task/features/task/data/data_source/remote/tasks_remote_data_source.dart';
import 'package:maids_task/features/task/data/repo/tasks_repo_impl.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';
import 'package:maids_task/features/task/presentation/bloc/add_task/add_task_cubit.dart';
import 'package:maids_task/features/task/presentation/bloc/get_tasks/get_tasks_bloc.dart';
import 'package:maids_task/injection_container.config.dart';

import 'core/network/dio_factory.dart';

final getIt = GetIt.instance;
Future<void> init() async {
  final dio = await DioFactory().getDio();
  getIt.registerLazySingleton(
      () => LoginServiceClient(dio, baseUrl: AppConstants.baseUrl));
  getIt.registerLazySingleton(
      () => TasksServiceClient(dio, baseUrl: AppConstants.baseUrl));
  getIt.registerFactory(
      () => TasksRemoteDataSource(tasksServiceClient: getIt()));
  getIt.registerFactory(() => TasksLocalDataSource());
  getIt.registerFactory<TaskRepo>(() => TaskRepoImpl(getIt(), getIt()));
  getIt.registerFactory(() => GetTasksBloc(getIt()));
  getIt.registerFactory(() => AddTaskCubit(getIt()));
  configureDependencies();
}

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();
