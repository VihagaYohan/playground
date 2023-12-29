import 'package:flutter/material.dart';

// model
import 'package:playground/models/Todo.dart';

class TodoDetails extends StatelessWidget {
  const TodoDetails({super.key, required this.todo});

  // declare a variable to hold todo item
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    // use the Todo to create the UI
    return Scaffold(
        appBar: AppBar(title: Text(todo.title)),
        body: Padding(
            padding: const EdgeInsets.all(16), child: Text(todo.description)));
  }
}
