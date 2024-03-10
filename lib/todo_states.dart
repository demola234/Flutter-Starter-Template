import 'package:freezed_annotation/freezed_annotation.dart';

import 'core/proto/generate/todo.pb.dart';

part 'todo_states.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.loading() = _Loading;
  const factory TodoState.getTodo({required GetAllTaskResponse data}) =
      _Success;
  const factory TodoState.error({required String message}) = _Error;
}
