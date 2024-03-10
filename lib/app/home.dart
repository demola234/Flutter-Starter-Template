import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/localization/generated/strings.dart';
import '../core/logger/logger.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    ConsoleOutput.logVerbose('Increment $_counter');
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    ConsoleOutput.logVerbose('Decrement $_counter');
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Strings.of(context)!.appName,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: Strings.of(context)!.increment,
            child: const Icon(Icons.add),
          ),
          20.horizontalSpace,
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: Strings.of(context)!.decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
