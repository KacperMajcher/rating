import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 15,
        ),
        child: Expanded(
          child: Column(
            children: [
              Container(
                color: const Color.fromRGBO(41, 41, 41, 1),
                margin: const EdgeInsets.only(
                  top: 35,
                  bottom: 25,
                ),
                child: Text(
                  'App Planner: Upcoming Deadlines',
                  style: GoogleFonts.sono(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(237, 237, 233, 1),
                  ),
                ),
              ),
              Expanded(
                child: ListView(children: const [
                  SizedBox(
                    height: 50,
                  ),
                  _DeadlineItem(
                    task: 'Improve home_page screen look',
                    deadline: 1,
                  ),
                  SizedBox(height: 10),
                  _DeadlineItem(
                    task: 'Add deadline',
                    deadline: 1,
                  ),
                  SizedBox(height: 10),
                  _DeadlineItem(
                    task: 'Add firebase to the project',
                    deadline: 1,
                  ),
                  SizedBox(height: 10),
                ]),
              )
            ],
          ),
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

class _DeadlineItem extends StatelessWidget {
  const _DeadlineItem({required this.task, required this.deadline});
  final String task;
  final int deadline;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        tileColor: const Color.fromRGBO(82, 82, 82, 1),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.circle_outlined,
            color: Color.fromARGB(255, 207, 200, 200),
          ),
        ),
        title: Text(
          task,
          style: GoogleFonts.ubuntuMono(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: 110,
            width: 100,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(214, 204, 194, 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  deadline.toString(),
                  style: GoogleFonts.ubuntuMono(
                    fontSize: 12,
                    color: Colors.black,
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'day/s left',
                  style: GoogleFonts.ubuntuMono(
                      fontSize: 15,
                      color: Colors.black,
                      textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
