import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          DeadlineWidget(task: 'Improve home_page screen look'),
          DeadlineWidget(task: 'Add deadline'),
          DeadlineWidget(task: 'Add firebase to the project'),
        ],
      ),
    );
  }
}

class DeadlineWidget extends StatelessWidget {
  const DeadlineWidget({super.key, required this.task});
  final String task;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Text(task),
    );
  }
}
