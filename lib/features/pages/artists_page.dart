import 'package:flutter/material.dart';
import 'package:rating/features/widgets/navigation_drawer.dart';

class ArtistsPage extends StatelessWidget {
  const ArtistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Artists'),
        backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
        elevation: 0,
      ),
      drawer: navigationDrawer(context),
      body: const Center(
        child: Text('This is ArtistsPage'),
      ),
    );
  }
}
