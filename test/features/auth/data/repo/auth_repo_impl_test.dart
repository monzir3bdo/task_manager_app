import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:maids_task/core/network/clients/login_service_client.dart';
import 'package:maids_task/core/network/result/result.dart';
import 'package:maids_task/features/auth/data/data_sources/remote/login_remote_data_source.dart';
import 'package:maids_task/features/auth/data/repo/auth_repo_impl.dart';
import 'package:maids_task/features/auth/domain/entity/login_entity.dart';
import 'package:mocktail/mocktail.dart';

class MockServiceClient extends Mock implements LoginServiceClient {}

const username = 'emilys';
const password = 'emilyspass';
void main() async {
  final mockServiceClient = MockServiceClient();

  final authRemoteDataSource =
      LoginRemoteDataSource(loginServiceClient: mockServiceClient);
  final authRepo = AuthRepoImpl(remoteDataSource: authRemoteDataSource);
  group('Auth', () {
    test(
      'Login Success',
      () async {
        when(() => mockServiceClient.login(any(), any())).thenAnswer(
          (_) async => const LoginEntity(
            id: 5,
            username: 'emilys',
            email: 'emilyspass',
            firstName: 'Emilys',
            lastName: 'Emilys',
            gender: 'female',
            image: 'someimage',
          ),
        );
        final result =
            await authRepo.login(username: username, password: password);
        expect(result, isA<Success<LoginEntity>>());
      },
    );
    test(
      'Login Failure',
      () async {
        const errorMessage = 'Invalid credentials';
        final dioException = DioException(
          requestOptions: RequestOptions(path: '/auth/login'),
          response: Response(
            requestOptions: RequestOptions(path: '/auth/login'),
            data: {'message': errorMessage},
            statusCode: 401,
          ),
        );
        when(() => mockServiceClient.login(any(), any()))
            .thenThrow(dioException);

        final result =
            await authRepo.login(username: username, password: password);
        expect(result, isA<Failure<LoginEntity>>());
      },
    );
  });
}
