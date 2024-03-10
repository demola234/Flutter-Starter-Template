//
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;

class CreateTaskRequest extends $pb.GeneratedMessage {
  factory CreateTaskRequest({
    $core.String? taskName,
    $core.String? taskDescription,
    $core.String? taskDeadline,
    $core.String? taskStatus,
    $core.String? taskPriority,
    $1.Timestamp? taskCreatedAt,
  }) {
    final $result = create();
    if (taskName != null) {
      $result.taskName = taskName;
    }
    if (taskDescription != null) {
      $result.taskDescription = taskDescription;
    }
    if (taskDeadline != null) {
      $result.taskDeadline = taskDeadline;
    }
    if (taskStatus != null) {
      $result.taskStatus = taskStatus;
    }
    if (taskPriority != null) {
      $result.taskPriority = taskPriority;
    }
    if (taskCreatedAt != null) {
      $result.taskCreatedAt = taskCreatedAt;
    }
    return $result;
  }
  CreateTaskRequest._() : super();
  factory CreateTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskName')
    ..aOS(2, _omitFieldNames ? '' : 'taskDescription')
    ..aOS(3, _omitFieldNames ? '' : 'taskDeadline')
    ..aOS(4, _omitFieldNames ? '' : 'taskStatus')
    ..aOS(5, _omitFieldNames ? '' : 'taskPriority')
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'taskCreatedAt', protoName: 'task_createdAt', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskRequest clone() => CreateTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskRequest copyWith(void Function(CreateTaskRequest) updates) => super.copyWith((message) => updates(message as CreateTaskRequest)) as CreateTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest create() => CreateTaskRequest._();
  CreateTaskRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTaskRequest> createRepeated() => $pb.PbList<CreateTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskRequest>(create);
  static CreateTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskName => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskDescription($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get taskDeadline => $_getSZ(2);
  @$pb.TagNumber(3)
  set taskDeadline($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTaskDeadline() => $_has(2);
  @$pb.TagNumber(3)
  void clearTaskDeadline() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get taskStatus => $_getSZ(3);
  @$pb.TagNumber(4)
  set taskStatus($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTaskStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get taskPriority => $_getSZ(4);
  @$pb.TagNumber(5)
  set taskPriority($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTaskPriority() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskPriority() => clearField(5);

  @$pb.TagNumber(6)
  $1.Timestamp get taskCreatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set taskCreatedAt($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTaskCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearTaskCreatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureTaskCreatedAt() => $_ensure(5);
}

class CreateTaskResponse extends $pb.GeneratedMessage {
  factory CreateTaskResponse({
    $core.String? taskName,
    $core.String? taskDescription,
    $core.String? taskDeadline,
    $core.String? taskStatus,
    $core.String? taskPriority,
    $1.Timestamp? taskCreatedAt,
    $1.Timestamp? taskUpdatedAt,
    $fixnum.Int64? taskId,
  }) {
    final $result = create();
    if (taskName != null) {
      $result.taskName = taskName;
    }
    if (taskDescription != null) {
      $result.taskDescription = taskDescription;
    }
    if (taskDeadline != null) {
      $result.taskDeadline = taskDeadline;
    }
    if (taskStatus != null) {
      $result.taskStatus = taskStatus;
    }
    if (taskPriority != null) {
      $result.taskPriority = taskPriority;
    }
    if (taskCreatedAt != null) {
      $result.taskCreatedAt = taskCreatedAt;
    }
    if (taskUpdatedAt != null) {
      $result.taskUpdatedAt = taskUpdatedAt;
    }
    if (taskId != null) {
      $result.taskId = taskId;
    }
    return $result;
  }
  CreateTaskResponse._() : super();
  factory CreateTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskName')
    ..aOS(2, _omitFieldNames ? '' : 'taskDescription')
    ..aOS(3, _omitFieldNames ? '' : 'taskDeadline')
    ..aOS(4, _omitFieldNames ? '' : 'taskStatus')
    ..aOS(5, _omitFieldNames ? '' : 'taskPriority')
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'taskCreatedAt', protoName: 'task_createdAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'taskUpdatedAt', protoName: 'task_updatedAt', subBuilder: $1.Timestamp.create)
    ..aInt64(8, _omitFieldNames ? '' : 'taskId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTaskResponse clone() => CreateTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTaskResponse copyWith(void Function(CreateTaskResponse) updates) => super.copyWith((message) => updates(message as CreateTaskResponse)) as CreateTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskResponse create() => CreateTaskResponse._();
  CreateTaskResponse createEmptyInstance() => create();
  static $pb.PbList<CreateTaskResponse> createRepeated() => $pb.PbList<CreateTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTaskResponse>(create);
  static CreateTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskName => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskDescription($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get taskDeadline => $_getSZ(2);
  @$pb.TagNumber(3)
  set taskDeadline($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTaskDeadline() => $_has(2);
  @$pb.TagNumber(3)
  void clearTaskDeadline() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get taskStatus => $_getSZ(3);
  @$pb.TagNumber(4)
  set taskStatus($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTaskStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get taskPriority => $_getSZ(4);
  @$pb.TagNumber(5)
  set taskPriority($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTaskPriority() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskPriority() => clearField(5);

  @$pb.TagNumber(6)
  $1.Timestamp get taskCreatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set taskCreatedAt($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTaskCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearTaskCreatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureTaskCreatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $1.Timestamp get taskUpdatedAt => $_getN(6);
  @$pb.TagNumber(7)
  set taskUpdatedAt($1.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasTaskUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearTaskUpdatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureTaskUpdatedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get taskId => $_getI64(7);
  @$pb.TagNumber(8)
  set taskId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTaskId() => $_has(7);
  @$pb.TagNumber(8)
  void clearTaskId() => clearField(8);
}

class EmptyGetRequest extends $pb.GeneratedMessage {
  factory EmptyGetRequest() => create();
  EmptyGetRequest._() : super();
  factory EmptyGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyGetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyGetRequest clone() => EmptyGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyGetRequest copyWith(void Function(EmptyGetRequest) updates) => super.copyWith((message) => updates(message as EmptyGetRequest)) as EmptyGetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyGetRequest create() => EmptyGetRequest._();
  EmptyGetRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyGetRequest> createRepeated() => $pb.PbList<EmptyGetRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyGetRequest>(create);
  static EmptyGetRequest? _defaultInstance;
}

class GetAllTaskResponse extends $pb.GeneratedMessage {
  factory GetAllTaskResponse({
    $core.Iterable<Task>? tasks,
  }) {
    final $result = create();
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    return $result;
  }
  GetAllTaskResponse._() : super();
  factory GetAllTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb'), createEmptyInstance: create)
    ..pc<Task>(1, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM, subBuilder: Task.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllTaskResponse clone() => GetAllTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllTaskResponse copyWith(void Function(GetAllTaskResponse) updates) => super.copyWith((message) => updates(message as GetAllTaskResponse)) as GetAllTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllTaskResponse create() => GetAllTaskResponse._();
  GetAllTaskResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllTaskResponse> createRepeated() => $pb.PbList<GetAllTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllTaskResponse>(create);
  static GetAllTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Task> get tasks => $_getList(0);
}

class DeleteTaskRequest extends $pb.GeneratedMessage {
  factory DeleteTaskRequest({
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteTaskRequest._() : super();
  factory DeleteTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteTaskRequest clone() => DeleteTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteTaskRequest copyWith(void Function(DeleteTaskRequest) updates) => super.copyWith((message) => updates(message as DeleteTaskRequest)) as DeleteTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTaskRequest create() => DeleteTaskRequest._();
  DeleteTaskRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteTaskRequest> createRepeated() => $pb.PbList<DeleteTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteTaskRequest>(create);
  static DeleteTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class EmptyTaskRequest extends $pb.GeneratedMessage {
  factory EmptyTaskRequest() => create();
  EmptyTaskRequest._() : super();
  factory EmptyTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyTaskRequest clone() => EmptyTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyTaskRequest copyWith(void Function(EmptyTaskRequest) updates) => super.copyWith((message) => updates(message as EmptyTaskRequest)) as EmptyTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyTaskRequest create() => EmptyTaskRequest._();
  EmptyTaskRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyTaskRequest> createRepeated() => $pb.PbList<EmptyTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyTaskRequest>(create);
  static EmptyTaskRequest? _defaultInstance;
}

class UpdateTaskRequest extends $pb.GeneratedMessage {
  factory UpdateTaskRequest({
    $fixnum.Int64? id,
    $core.String? title,
    $core.String? description,
    $core.String? taskStatus,
    $core.String? taskPriority,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    if (description != null) {
      $result.description = description;
    }
    if (taskStatus != null) {
      $result.taskStatus = taskStatus;
    }
    if (taskPriority != null) {
      $result.taskPriority = taskPriority;
    }
    return $result;
  }
  UpdateTaskRequest._() : super();
  factory UpdateTaskRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'taskStatus')
    ..aOS(5, _omitFieldNames ? '' : 'taskPriority')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTaskRequest clone() => UpdateTaskRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTaskRequest copyWith(void Function(UpdateTaskRequest) updates) => super.copyWith((message) => updates(message as UpdateTaskRequest)) as UpdateTaskRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTaskRequest create() => UpdateTaskRequest._();
  UpdateTaskRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateTaskRequest> createRepeated() => $pb.PbList<UpdateTaskRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTaskRequest>(create);
  static UpdateTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get taskStatus => $_getSZ(3);
  @$pb.TagNumber(4)
  set taskStatus($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTaskStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get taskPriority => $_getSZ(4);
  @$pb.TagNumber(5)
  set taskPriority($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTaskPriority() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskPriority() => clearField(5);
}

class UpdateTaskResponse extends $pb.GeneratedMessage {
  factory UpdateTaskResponse({
    Task? task,
  }) {
    final $result = create();
    if (task != null) {
      $result.task = task;
    }
    return $result;
  }
  UpdateTaskResponse._() : super();
  factory UpdateTaskResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateTaskResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateTaskResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb'), createEmptyInstance: create)
    ..aOM<Task>(1, _omitFieldNames ? '' : 'task', subBuilder: Task.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateTaskResponse clone() => UpdateTaskResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateTaskResponse copyWith(void Function(UpdateTaskResponse) updates) => super.copyWith((message) => updates(message as UpdateTaskResponse)) as UpdateTaskResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTaskResponse create() => UpdateTaskResponse._();
  UpdateTaskResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateTaskResponse> createRepeated() => $pb.PbList<UpdateTaskResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateTaskResponse>(create);
  static UpdateTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Task get task => $_getN(0);
  @$pb.TagNumber(1)
  set task(Task v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTask() => $_has(0);
  @$pb.TagNumber(1)
  void clearTask() => clearField(1);
  @$pb.TagNumber(1)
  Task ensureTask() => $_ensure(0);
}

class Task extends $pb.GeneratedMessage {
  factory Task({
    $core.String? taskName,
    $core.String? taskDescription,
    $core.String? taskDeadline,
    $core.String? taskStatus,
    $core.String? taskPriority,
    $1.Timestamp? taskCreatedAt,
    $1.Timestamp? taskUpdatedAt,
    $fixnum.Int64? taskId,
  }) {
    final $result = create();
    if (taskName != null) {
      $result.taskName = taskName;
    }
    if (taskDescription != null) {
      $result.taskDescription = taskDescription;
    }
    if (taskDeadline != null) {
      $result.taskDeadline = taskDeadline;
    }
    if (taskStatus != null) {
      $result.taskStatus = taskStatus;
    }
    if (taskPriority != null) {
      $result.taskPriority = taskPriority;
    }
    if (taskCreatedAt != null) {
      $result.taskCreatedAt = taskCreatedAt;
    }
    if (taskUpdatedAt != null) {
      $result.taskUpdatedAt = taskUpdatedAt;
    }
    if (taskId != null) {
      $result.taskId = taskId;
    }
    return $result;
  }
  Task._() : super();
  factory Task.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Task.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Task', package: const $pb.PackageName(_omitMessageNames ? '' : 'pb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskName')
    ..aOS(2, _omitFieldNames ? '' : 'taskDescription')
    ..aOS(3, _omitFieldNames ? '' : 'taskDeadline')
    ..aOS(4, _omitFieldNames ? '' : 'taskStatus')
    ..aOS(5, _omitFieldNames ? '' : 'taskPriority')
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'taskCreatedAt', protoName: 'task_createdAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'taskUpdatedAt', protoName: 'task_updatedAt', subBuilder: $1.Timestamp.create)
    ..aInt64(8, _omitFieldNames ? '' : 'taskId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Task clone() => Task()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Task copyWith(void Function(Task) updates) => super.copyWith((message) => updates(message as Task)) as Task;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Task create() => Task._();
  Task createEmptyInstance() => create();
  static $pb.PbList<Task> createRepeated() => $pb.PbList<Task>();
  @$core.pragma('dart2js:noInline')
  static Task getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Task>(create);
  static Task? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskName => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTaskName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get taskDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set taskDescription($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTaskDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get taskDeadline => $_getSZ(2);
  @$pb.TagNumber(3)
  set taskDeadline($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTaskDeadline() => $_has(2);
  @$pb.TagNumber(3)
  void clearTaskDeadline() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get taskStatus => $_getSZ(3);
  @$pb.TagNumber(4)
  set taskStatus($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTaskStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get taskPriority => $_getSZ(4);
  @$pb.TagNumber(5)
  set taskPriority($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTaskPriority() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskPriority() => clearField(5);

  @$pb.TagNumber(6)
  $1.Timestamp get taskCreatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set taskCreatedAt($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTaskCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearTaskCreatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureTaskCreatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $1.Timestamp get taskUpdatedAt => $_getN(6);
  @$pb.TagNumber(7)
  set taskUpdatedAt($1.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasTaskUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearTaskUpdatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureTaskUpdatedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get taskId => $_getI64(7);
  @$pb.TagNumber(8)
  set taskId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTaskId() => $_has(7);
  @$pb.TagNumber(8)
  void clearTaskId() => clearField(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
