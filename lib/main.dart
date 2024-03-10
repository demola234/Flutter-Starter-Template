import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core/injector/injector.dart';
import 'core/localization/generated/strings.dart';
import 'core/proto/generate/google/protobuf/timestamp.pb.dart';
import 'core/proto/generate/todo.pb.dart';
import 'todo_notifier.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await injector();
  runApp(const ProviderScope(child: StarterTemplateApp()));
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ref.watch(todoNotifierProvider).maybeWhen(
            orElse: () {
              return const CircularProgressIndicator();
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            getTodo: (data) {
              return Expanded(
                child: ListView.builder(
                    itemCount: data.tasks.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                            '${data.tasks[index].taskName} ${data.tasks[index].taskId}'),
                        onLongPress: () {
                          ref.read(todoNotifierProvider.notifier).deleteTodo(
                              deleteTaskRequest: DeleteTaskRequest(
                                  id: data.tasks[index].taskId));
                        },
                        subtitle: Text(data.tasks[index].taskDescription),
                      );
                    }),
              );
            },
            error: (error) {
              return Text(error.toString());
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add dummy todo

          DateTime currentDate = DateTime.now(); //DateTime

          ref.read(todoNotifierProvider.notifier).createTodo(
              createTaskRequest: CreateTaskRequest(
                  taskName: 'Hello',
                  taskCreatedAt: Timestamp.fromDateTime(currentDate),
                  taskDeadline: 'Tomorrow',
                  taskDescription: 'A short Tasks',
                  taskPriority: 'High',
                  taskStatus: 'Not Started'));

          // ref.read(todoNotifierProvider.notifier).getTodo();
        },
        tooltip: Strings.of(context)!.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
