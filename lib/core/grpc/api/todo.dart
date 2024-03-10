import 'package:dartz/dartz.dart';

import '../../error/failure.dart';
import '../../proto/generate/todo.pb.dart' as $pb;
import '../grpc_handler.dart';

abstract class TodoFacade {
  Future<Either<Failure, Unit>> createTodo(
      $pb.CreateTaskRequest createTaskRequest);
  Future<Either<Failure, Unit>> updateTodo(
      $pb.UpdateTaskRequest updateTaskRequest);
  Future<Either<Failure, Unit>> deleteTodo(
      $pb.DeleteTaskRequest deleteTaskRequest);

  Future<Either<Failure, $pb.GetAllTaskResponse>> listTodo();
}

class ITodoFacade implements TodoFacade {
  final GrpcHandlerService _grpcHandlerService;

  ITodoFacade(this._grpcHandlerService);

  @override
  Future<Either<Failure, Unit>> createTodo(
      $pb.CreateTaskRequest createTaskRequest) async {
    final response =
        await _grpcHandlerService.client.createTask(createTaskRequest);

    print(response);

    if (response.isInitialized()) {
      return right(unit);
    } else {
      return left(const Failure.errorFailure('An Error Occurred'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteTodo(
      $pb.DeleteTaskRequest deleteTaskRequest) async {
    final response =
        await _grpcHandlerService.client.deleteTask(deleteTaskRequest);

    if (response.isInitialized()) {
      return right(unit);
    } else {
      return left(const Failure.errorFailure('An Error Occurred'));
    }
  }

  @override
  Future<Either<Failure, $pb.GetAllTaskResponse>> listTodo() async {
    print(_grpcHandlerService.client.getTask($pb.EmptyGetRequest()));
    final response =
        await _grpcHandlerService.client.getTask($pb.EmptyGetRequest());

    if (response.isInitialized()) {
      return right(response);
    } else {
      return left(const Failure.errorFailure('An Error Occurred'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateTodo(
      $pb.UpdateTaskRequest updateTaskRequest) async {
    final response =
        await _grpcHandlerService.client.updateTask(updateTaskRequest);

    if (response.isInitialized()) {
      return right(unit);
    } else {
      return left(const Failure.errorFailure('An Error Occurred'));
    }
  }
}
