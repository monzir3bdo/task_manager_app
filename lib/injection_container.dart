import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:maids_task/core/network/clients/login_service_client.dart';
import 'package:maids_task/injection_container.config.dart';

import 'core/network/dio_factory.dart';

final getIt = GetIt.instance;
Future<void> init() async {
  final dio = await DioFactory().getDio();
  getIt.registerLazySingleton(() => LoginServiceClient(dio));
  configureDependencies();
}

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();
