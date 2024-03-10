import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/grpc/api/todo.dart';
import 'core/injector/injector.dart';
import 'core/proto/generate/todo.pb.dart';
import 'todo_states.dart';

class TodoNotifier extends StateNotifier<TodoState> {
  TodoNotifier() : super(const TodoState.initial()) {
    getTodo();
  }

  final todoList = sl<TodoFacade>();

  getTodo() async {
    state = const TodoState.loading();
    final todo = await todoList.listTodo();

    print(todo);

    todo.fold((l) {
      state = TodoState.error(message: l.message);
    }, (r) {
      state = TodoState.getTodo(data: r);
    });
  }

  createTodo({required CreateTaskRequest createTaskRequest}) async {
    state = const TodoState.loading();

    final todoList = sl<TodoFacade>();

    final todo = await todoList.createTodo(createTaskRequest);

    todo.fold((l) {
      state = TodoState.error(message: l.message);
    }, (r) {
      getTodo();
    });
  }

  updateTodo({required UpdateTaskRequest updateTaskRequest}) async {
    state = const TodoState.loading();

    final todoList = sl<TodoFacade>();

    final todo = await todoList.updateTodo(updateTaskRequest);

    todo.fold((l) {
      state = TodoState.error(message: l.message);
    }, (r) {
      getTodo();
    });
  }

  deleteTodo({required DeleteTaskRequest deleteTaskRequest}) async {
    state = const TodoState.loading();

    final todoList = sl<TodoFacade>();

    final todo = await todoList.deleteTodo(deleteTaskRequest);

    todo.fold((l) {
      state = TodoState.error(message: l.message);
    }, (r) {
      getTodo();
    });
  }
}

final todoNotifierProvider =
    StateNotifierProvider<TodoNotifier, TodoState>((ref) => TodoNotifier());
