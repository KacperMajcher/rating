import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/model/deadline_model.dart';

class DeadlineItems extends StatelessWidget {
  const DeadlineItems(
      {super.key, required this.onCheckBoxChange, required this.deadlineItem});

  final DeadlineItem deadlineItem;
  final onCheckBoxChange;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: ListTile(
          onTap: () {
            onCheckBoxChange(deadlineItem);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          tileColor: const Color.fromRGBO(82, 82, 82, 1),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              deadlineItem.isDone
                  ? Icons.check_circle_rounded
                  : Icons.circle_outlined,
              color: const Color.fromARGB(255, 207, 200, 200),
            ),
          ),
          title: Text(
            deadlineItem.task!,
            style: GoogleFonts.ubuntuMono(
              fontSize: 20,
              color: Colors.white,
              decoration:
                  deadlineItem.isDone ? TextDecoration.lineThrough : null,
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
                    deadlineItem.deadline.toString(),
                    style: GoogleFonts.ubuntuMono(
                      fontSize: 22,
                      color: Colors.black,
                      textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  StreamBuilder<Object>(
                      stream: null,
                      builder: (context, snapshot) {
                        if (deadlineItem.deadline.toString() == '1') {
                          return Text(
                            'day left',
                            style: GoogleFonts.ubuntuMono(
                                fontSize: 15,
                                color: Colors.black,
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}
