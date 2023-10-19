import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/features/widgets/deadline_item.dart';
import 'package:rating/features/widgets/search_box.dart';
import 'package:rating/model/deadline.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final deadlineItemsList = DeadlineItem.deadlineItemsList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            searchBox(),
            const SizedBox(
              height: 23,
            ),
            Container(
              height: 120,
              color: const Color.fromRGBO(41, 41, 41, 1),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'App Planner: Upcoming Deadlines',
                  style: GoogleFonts.sono(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(237, 237, 233, 1),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(children: [
                for (DeadlineItem deadlineItems in deadlineItemsList)
                  DeadlineItems(deadlineItem: deadlineItems),
                const SizedBox(height: 30),
              ]),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('RatingProject'),
      backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
      elevation: 0,
    );
  }
}
