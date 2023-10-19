import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/features/widgets/search_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              child: ListView(children: const [
                SizedBox(
                  height: 30,
                ),
                _DeadlineItem(
                  task:
                      'Implement search box functionality to filter deadlines',
                  deadline: 0,
                ),
                SizedBox(height: 10),
                _DeadlineItem(
                  task: 'Add firebase to the project',
                  deadline: 0,
                ),
                SizedBox(height: 10),
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
            margin: const EdgeInsets.all(3),
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
                    fontSize: 22,
                    color: Colors.black,
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                StreamBuilder<Object>(
                    stream: null,
                    builder: (context, snapshot) {
                      if (deadline.toString() == '1') {
                        return Text(
                          'day left',
                          style: GoogleFonts.ubuntuMono(
                              fontSize: 15,
                              color: Colors.black,
                              textStyle:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        );
                      }
                      return Text(
                        'days left',
                        style: GoogleFonts.ubuntuMono(
                            fontSize: 15,
                            color: Colors.black,
                            textStyle:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
