// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core/network/clients/login_service_client.dart' as _i730;
import 'core/network/dio_factory.dart' as _i302;
import 'features/auth/data/data_sources/remote/login_remote_data_source.dart'
    as _i450;
import 'features/auth/data/repo/auth_repo_impl.dart' as _i186;
import 'features/auth/domain/entity/login_entity.dart' as _i102;
import 'features/auth/domain/repo/auth_repo.dart' as _i442;
import 'features/auth/domain/usecase/login_use_case.dart' as _i212;
import 'features/auth/presentation/bloc/auth/auth_cubit.dart' as _i1012;
import 'features/task/domain/repo/task_repo.dart' as _i234;
import 'features/task/domain/usecases/add_task_usecase.dart' as _i392;
import 'features/task/domain/usecases/delete_task_use_case.dart' as _i355;
import 'features/task/domain/usecases/get_all_tasks_use_case.dart' as _i96;
import 'features/task/domain/usecases/update_task_use_case.dart' as _i184;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i302.DioFactory>(() => _i302.DioFactory());
    gh.factory<_i450.LoginRemoteDataSource>(() => _i450.LoginRemoteDataSource(
        loginServiceClient: gh<_i730.LoginServiceClient>()));
    gh.factory<_i102.LoginEntity>(() => _i102.LoginEntity(
          id: gh<int>(),
          username: gh<String>(),
          email: gh<String>(),
          firstName: gh<String>(),
          lastName: gh<String>(),
          gender: gh<String>(),
          image: gh<String>(),
        ));
    gh.factory<_i392.AddTaskUseCase>(
        () => _i392.AddTaskUseCase(taskRepo: gh<_i234.TaskRepo>()));
    gh.factory<_i355.DeleteTaskUseCase>(
        () => _i355.DeleteTaskUseCase(taskRepo: gh<_i234.TaskRepo>()));
    gh.factory<_i96.GetAllTasksUseCase>(
        () => _i96.GetAllTasksUseCase(taskRepo: gh<_i234.TaskRepo>()));
    gh.factory<_i184.UpdateTaskUseCase>(
        () => _i184.UpdateTaskUseCase(taskRepo: gh<_i234.TaskRepo>()));
    gh.factory<_i442.AuthRepo>(() => _i186.AuthRepoImpl(
        remoteDataSource: gh<_i450.LoginRemoteDataSource>()));
    gh.factory<_i212.LoginUseCase>(
        () => _i212.LoginUseCase(authRepo: gh<_i442.AuthRepo>()));
    gh.factory<_i1012.AuthCubit>(
        () => _i1012.AuthCubit(gh<_i212.LoginUseCase>()));
    return this;
  }
}
