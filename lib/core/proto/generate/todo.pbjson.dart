//
//  Generated code. Do not modify.
//  source: todo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createTaskRequestDescriptor instead')
const CreateTaskRequest$json = {
  '1': 'CreateTaskRequest',
  '2': [
    {'1': 'task_name', '3': 1, '4': 1, '5': 9, '10': 'taskName'},
    {'1': 'task_description', '3': 2, '4': 1, '5': 9, '10': 'taskDescription'},
    {'1': 'task_deadline', '3': 3, '4': 1, '5': 9, '10': 'taskDeadline'},
    {'1': 'task_status', '3': 4, '4': 1, '5': 9, '10': 'taskStatus'},
    {'1': 'task_priority', '3': 5, '4': 1, '5': 9, '10': 'taskPriority'},
    {'1': 'task_createdAt', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'taskCreatedAt'},
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUYXNrUmVxdWVzdBIbCgl0YXNrX25hbWUYASABKAlSCHRhc2tOYW1lEikKEHRhc2'
    'tfZGVzY3JpcHRpb24YAiABKAlSD3Rhc2tEZXNjcmlwdGlvbhIjCg10YXNrX2RlYWRsaW5lGAMg'
    'ASgJUgx0YXNrRGVhZGxpbmUSHwoLdGFza19zdGF0dXMYBCABKAlSCnRhc2tTdGF0dXMSIwoNdG'
    'Fza19wcmlvcml0eRgFIAEoCVIMdGFza1ByaW9yaXR5EkEKDnRhc2tfY3JlYXRlZEF0GAYgASgL'
    'MhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFINdGFza0NyZWF0ZWRBdA==');

@$core.Deprecated('Use createTaskResponseDescriptor instead')
const CreateTaskResponse$json = {
  '1': 'CreateTaskResponse',
  '2': [
    {'1': 'task_name', '3': 1, '4': 1, '5': 9, '10': 'taskName'},
    {'1': 'task_description', '3': 2, '4': 1, '5': 9, '10': 'taskDescription'},
    {'1': 'task_deadline', '3': 3, '4': 1, '5': 9, '10': 'taskDeadline'},
    {'1': 'task_status', '3': 4, '4': 1, '5': 9, '10': 'taskStatus'},
    {'1': 'task_priority', '3': 5, '4': 1, '5': 9, '10': 'taskPriority'},
    {'1': 'task_createdAt', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'taskCreatedAt'},
    {'1': 'task_updatedAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'taskUpdatedAt'},
    {'1': 'task_id', '3': 8, '4': 1, '5': 3, '10': 'taskId'},
  ],
};

/// Descriptor for `CreateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVUYXNrUmVzcG9uc2USGwoJdGFza19uYW1lGAEgASgJUgh0YXNrTmFtZRIpChB0YX'
    'NrX2Rlc2NyaXB0aW9uGAIgASgJUg90YXNrRGVzY3JpcHRpb24SIwoNdGFza19kZWFkbGluZRgD'
    'IAEoCVIMdGFza0RlYWRsaW5lEh8KC3Rhc2tfc3RhdHVzGAQgASgJUgp0YXNrU3RhdHVzEiMKDX'
    'Rhc2tfcHJpb3JpdHkYBSABKAlSDHRhc2tQcmlvcml0eRJBCg50YXNrX2NyZWF0ZWRBdBgGIAEo'
    'CzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDXRhc2tDcmVhdGVkQXQSQQoOdGFza191cG'
    'RhdGVkQXQYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg10YXNrVXBkYXRlZEF0'
    'EhcKB3Rhc2tfaWQYCCABKANSBnRhc2tJZA==');

@$core.Deprecated('Use emptyGetRequestDescriptor instead')
const EmptyGetRequest$json = {
  '1': 'EmptyGetRequest',
};

/// Descriptor for `EmptyGetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyGetRequestDescriptor = $convert.base64Decode(
    'Cg9FbXB0eUdldFJlcXVlc3Q=');

@$core.Deprecated('Use getAllTaskResponseDescriptor instead')
const GetAllTaskResponse$json = {
  '1': 'GetAllTaskResponse',
  '2': [
    {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.pb.Task', '10': 'tasks'},
  ],
};

/// Descriptor for `GetAllTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllTaskResponseDescriptor = $convert.base64Decode(
    'ChJHZXRBbGxUYXNrUmVzcG9uc2USHgoFdGFza3MYASADKAsyCC5wYi5UYXNrUgV0YXNrcw==');

@$core.Deprecated('Use deleteTaskRequestDescriptor instead')
const DeleteTaskRequest$json = {
  '1': 'DeleteTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoA1ICaWQ=');

@$core.Deprecated('Use emptyTaskRequestDescriptor instead')
const EmptyTaskRequest$json = {
  '1': 'EmptyTaskRequest',
};

/// Descriptor for `EmptyTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyTaskRequestDescriptor = $convert.base64Decode(
    'ChBFbXB0eVRhc2tSZXF1ZXN0');

@$core.Deprecated('Use updateTaskRequestDescriptor instead')
const UpdateTaskRequest$json = {
  '1': 'UpdateTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'task_status', '3': 4, '4': 1, '5': 9, '10': 'taskStatus'},
    {'1': 'task_priority', '3': 5, '4': 1, '5': 9, '10': 'taskPriority'},
  ],
};

/// Descriptor for `UpdateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUYXNrUmVxdWVzdBIOCgJpZBgBIAEoA1ICaWQSFAoFdGl0bGUYAiABKAlSBXRpdG'
    'xlEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIfCgt0YXNrX3N0YXR1cxgEIAEo'
    'CVIKdGFza1N0YXR1cxIjCg10YXNrX3ByaW9yaXR5GAUgASgJUgx0YXNrUHJpb3JpdHk=');

@$core.Deprecated('Use updateTaskResponseDescriptor instead')
const UpdateTaskResponse$json = {
  '1': 'UpdateTaskResponse',
  '2': [
    {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.pb.Task', '10': 'task'},
  ],
};

/// Descriptor for `UpdateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVUYXNrUmVzcG9uc2USHAoEdGFzaxgBIAEoCzIILnBiLlRhc2tSBHRhc2s=');

@$core.Deprecated('Use taskDescriptor instead')
const Task$json = {
  '1': 'Task',
  '2': [
    {'1': 'task_name', '3': 1, '4': 1, '5': 9, '10': 'taskName'},
    {'1': 'task_description', '3': 2, '4': 1, '5': 9, '10': 'taskDescription'},
    {'1': 'task_deadline', '3': 3, '4': 1, '5': 9, '10': 'taskDeadline'},
    {'1': 'task_status', '3': 4, '4': 1, '5': 9, '10': 'taskStatus'},
    {'1': 'task_priority', '3': 5, '4': 1, '5': 9, '10': 'taskPriority'},
    {'1': 'task_createdAt', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'taskCreatedAt'},
    {'1': 'task_updatedAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'taskUpdatedAt'},
    {'1': 'task_id', '3': 8, '4': 1, '5': 3, '10': 'taskId'},
  ],
};

/// Descriptor for `Task`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskDescriptor = $convert.base64Decode(
    'CgRUYXNrEhsKCXRhc2tfbmFtZRgBIAEoCVIIdGFza05hbWUSKQoQdGFza19kZXNjcmlwdGlvbh'
    'gCIAEoCVIPdGFza0Rlc2NyaXB0aW9uEiMKDXRhc2tfZGVhZGxpbmUYAyABKAlSDHRhc2tEZWFk'
    'bGluZRIfCgt0YXNrX3N0YXR1cxgEIAEoCVIKdGFza1N0YXR1cxIjCg10YXNrX3ByaW9yaXR5GA'
    'UgASgJUgx0YXNrUHJpb3JpdHkSQQoOdGFza19jcmVhdGVkQXQYBiABKAsyGi5nb29nbGUucHJv'
    'dG9idWYuVGltZXN0YW1wUg10YXNrQ3JlYXRlZEF0EkEKDnRhc2tfdXBkYXRlZEF0GAcgASgLMh'
    'ouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFINdGFza1VwZGF0ZWRBdBIXCgd0YXNrX2lkGAgg'
    'ASgDUgZ0YXNrSWQ=');

