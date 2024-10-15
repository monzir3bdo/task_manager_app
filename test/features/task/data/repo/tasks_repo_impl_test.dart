import 'package:flutter_test/flutter_test.dart';
import 'package:maids_task/core/network/network_info.dart';
import 'package:maids_task/core/network/result/result.dart';
import 'package:maids_task/features/task/data/data_source/local/tasks_local_data_source.dart';
import 'package:maids_task/features/task/data/data_source/remote/tasks_remote_data_source.dart';
import 'package:maids_task/features/task/data/model/tasks_model.dart';
import 'package:maids_task/features/task/data/model/tasks_response.dart';
import 'package:maids_task/features/task/data/repo/tasks_repo_impl.dart';
import 'package:maids_task/features/task/domain/dtos/add_task_dto.dart';
import 'package:maids_task/features/task/domain/dtos/update_task_dto.dart';
import 'package:mocktail/mocktail.dart';

class MockTasksRemoteDataSource extends Mock implements TasksRemoteDataSource {}

class MockTasksLocalDataSource extends Mock implements TasksLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() async {
  late TaskRepoImpl taskRepo;
  late MockTasksRemoteDataSource mockRemoteDataSource;
  late MockTasksLocalDataSource mockLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockTasksRemoteDataSource();
    mockLocalDataSource = MockTasksLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    taskRepo = TaskRepoImpl(
      mockRemoteDataSource,
      mockLocalDataSource,
      mockNetworkInfo,
    );
  });
  group('addTask', () {
    final taskDto = AddTaskDto(todo: 'Todo', completed: false, userId: 5);

    test('should return Success when remote data source call is successful',
        () async {
      // Arrange
      when(() => mockRemoteDataSource.addTask(taskDto: taskDto))
          .thenAnswer((_) async {});

      // Act
      final result = await taskRepo.addTask(taskDto: taskDto);

      // Assert
      expect(result, isA<Success<void>>());
    });

    test('should return Failure when remote data source call fails', () async {
      // Arrange
      const error = 'Failed to add task';
      when(() => mockRemoteDataSource.addTask(taskDto: taskDto))
          .thenThrow(Exception(error));

      // Act
      final result = await taskRepo.addTask(taskDto: taskDto);

      // Assert
      expect(result, isA<Failure<void>>());
    });
  });
  group('deleteTask', () {
    const taskId = 1;

    test('should return Success when remote call is successful', () async {
      // Arrange
      when(() => mockRemoteDataSource.deleteTask(taskId: taskId))
          .thenAnswer((_) async {});

      // Act
      final result = await taskRepo.deleteTask(taskId: taskId);

      // Assert
      expect(result, isA<Success<void>>());
    });

    test('should return Failure when remote call fails', () async {
      // Arrange
      const error = 'Failed to delete task';
      when(() => mockRemoteDataSource.deleteTask(taskId: taskId))
          .thenThrow(Exception(error));

      // Act
      final result = await taskRepo.deleteTask(taskId: taskId);

      // Assert
      expect(result, isA<Failure<void>>());
    });
  });

  group('getTasks', () {
    const skip = 0;
    const limit = 10;
    const tasksResponse = TasksResponse(
      todos: [
        TasksModel(
          id: 1,
          todo: 'todo',
          completed: false,
          userId: 5,
        ),
      ],
      total: 2,
      skip: skip,
      limit: limit,
    );

    test('should return Success with remote tasks when online', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDataSource.getTasks(skip: skip, limit: limit))
          .thenAnswer((_) async => tasksResponse);
      when(() => mockLocalDataSource.cacheTasks(any()))
          .thenAnswer((_) async {});

      // Act
      final result = await taskRepo.getTasks(skip: skip, limit: limit);

      // Assert
      expect(result, isA<Success<TasksResponse>>());
      expect((result as Success<TasksResponse>).data, tasksResponse);
    });

    test('should return Success with cached tasks when offline', () async {
      // Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      when(() => mockLocalDataSource.getTasks())
          .thenAnswer((_) async => tasksResponse.todos);

      // Act
      final result = await taskRepo.getTasks(skip: skip, limit: limit);

      // Assert
      expect(result, isA<Success<TasksResponse>>());
    });

    test('should return Failure when fetching tasks fails', () async {
      // Arrange
      const error = 'Failed to fetch tasks';
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDataSource.getTasks(skip: skip, limit: limit))
          .thenThrow(Exception(error));

      // Act
      final result = await taskRepo.getTasks(skip: skip, limit: limit);

      // Assert
      expect(result, isA<Failure<TasksResponse>>());
    });
  });

  group('updateTask', () {
    final taskDto =
        UpdateTaskDto(todoId: 5, userId: 5, completed: false, todo: 'todo');

    test('should return Success when remote call is successful', () async {
      // Arrange
      when(() => mockRemoteDataSource.updateTask(taskDto: taskDto))
          .thenAnswer((_) async {});

      // Act
      final result = await taskRepo.updateTask(taskDto: taskDto);

      // Assert
      expect(result, isA<Success<void>>());
    });

    test('should return Failure when remote call fails', () async {
      // Arrange
      const error = 'Failed to update task';
      when(() => mockRemoteDataSource.updateTask(taskDto: taskDto))
          .thenThrow(Exception(error));

      // Act
      final result = await taskRepo.updateTask(taskDto: taskDto);

      // Assert
      expect(result, isA<Failure<void>>());
    });
  });
}
