import 'package:flutter/material.dart';
import 'package:rating/features/widgets/navigation_drawer.dart';

class PodcastersPage extends StatelessWidget {
  const PodcastersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Podcasters'),
        backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
        elevation: 0,
      ),
      drawer: navigationDrawer(context),
      body: const Center(
        child: Text('This is PodcastersPage'),
      ),
    );
  }
}
