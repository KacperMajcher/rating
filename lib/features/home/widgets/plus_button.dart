import 'package:flutter/material.dart';
import 'package:rating/features/home/add/add_page.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({super.key, required this.mounted});

  final bool mounted;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFFE85D04),
      onPressed: () async {
        final result = await Navigator.of(context).push<bool>(
          MaterialPageRoute(
            builder: (context) => const AddPage(),
            fullscreenDialog: true,
          ),
        );

        if (result == true && mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Row(
                children: [
                  Icon(
                    Icons.tag_faces_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Alright, let\'s get to it, dude!'),
                ],
              ),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
