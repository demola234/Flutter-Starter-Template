//
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'todo.pb.dart' as $0;

export 'todo.pb.dart';

@$pb.GrpcServiceName('pb.TodoGrpc')
class TodoGrpcClient extends $grpc.Client {
  static final _$createTask = $grpc.ClientMethod<$0.CreateTaskRequest, $0.CreateTaskResponse>(
      '/pb.TodoGrpc/CreateTask',
      ($0.CreateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateTaskResponse.fromBuffer(value));
  static final _$getTask = $grpc.ClientMethod<$0.EmptyGetRequest, $0.GetAllTaskResponse>(
      '/pb.TodoGrpc/GetTask',
      ($0.EmptyGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetAllTaskResponse.fromBuffer(value));
  static final _$deleteTask = $grpc.ClientMethod<$0.DeleteTaskRequest, $0.EmptyTaskRequest>(
      '/pb.TodoGrpc/DeleteTask',
      ($0.DeleteTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmptyTaskRequest.fromBuffer(value));
  static final _$updateTask = $grpc.ClientMethod<$0.UpdateTaskRequest, $0.UpdateTaskResponse>(
      '/pb.TodoGrpc/UpdateTask',
      ($0.UpdateTaskRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateTaskResponse.fromBuffer(value));

  TodoGrpcClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateTaskResponse> createTask($0.CreateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAllTaskResponse> getTask($0.EmptyGetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyTaskRequest> deleteTask($0.DeleteTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateTaskResponse> updateTask($0.UpdateTaskRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }
}

@$pb.GrpcServiceName('pb.TodoGrpc')
abstract class TodoGrpcServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.TodoGrpc';

  TodoGrpcServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateTaskRequest, $0.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTaskRequest.fromBuffer(value),
        ($0.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyGetRequest, $0.GetAllTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyGetRequest.fromBuffer(value),
        ($0.GetAllTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteTaskRequest, $0.EmptyTaskRequest>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteTaskRequest.fromBuffer(value),
        ($0.EmptyTaskRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateTaskRequest, $0.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateTaskRequest.fromBuffer(value),
        ($0.UpdateTaskResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateTaskResponse> createTask_Pre($grpc.ServiceCall call, $async.Future<$0.CreateTaskRequest> request) async {
    return createTask(call, await request);
  }

  $async.Future<$0.GetAllTaskResponse> getTask_Pre($grpc.ServiceCall call, $async.Future<$0.EmptyGetRequest> request) async {
    return getTask(call, await request);
  }

  $async.Future<$0.EmptyTaskRequest> deleteTask_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteTaskRequest> request) async {
    return deleteTask(call, await request);
  }

  $async.Future<$0.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateTaskRequest> request) async {
    return updateTask(call, await request);
  }

  $async.Future<$0.CreateTaskResponse> createTask($grpc.ServiceCall call, $0.CreateTaskRequest request);
  $async.Future<$0.GetAllTaskResponse> getTask($grpc.ServiceCall call, $0.EmptyGetRequest request);
  $async.Future<$0.EmptyTaskRequest> deleteTask($grpc.ServiceCall call, $0.DeleteTaskRequest request);
  $async.Future<$0.UpdateTaskResponse> updateTask($grpc.ServiceCall call, $0.UpdateTaskRequest request);
}
