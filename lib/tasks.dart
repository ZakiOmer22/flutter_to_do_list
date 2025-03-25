import 'package:flutter/material.dart';
import 'TaskCard.dart';

class TasksPage extends StatelessWidget {
  final List<Map<String, dynamic>> tasks = [
    {
      'name': 'Learn Flutter',
      'progress': 70,
      'assignedTo': 'Alice',
    },
    {
      'name': 'Build a To-Do App',
      'progress': 50,
      'assignedTo': 'Bob',
    },
    {
      'name': 'Practice Dart',
      'progress': 20,
      'assignedTo': 'Charlie',
    },
    {
      'name': 'Practice Dart',
      'progress': 21,
      'assignedTo': 'Charlie',
    },
    {
      'name': 'Create App UI',
      'progress': 22,
      'assignedTo': 'Charlie',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your To Do List Tasks',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return TaskCard(
                    task: task); // This line uses TaskCard correctly
              },
            ),
          ),
        ],
      ),
    );
  }
}
