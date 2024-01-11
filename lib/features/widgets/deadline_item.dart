import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/features/home/cubit/home_cubit.dart';
import 'package:rating/model/deadline_model.dart';

class DeadlineItemWidget extends StatelessWidget {
  const DeadlineItemWidget({super.key, required this.deadlineItem});

  final DeadlineItem deadlineItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color.fromRGBO(82, 82, 82, 1),
      ),
      child: ListTile(
        onTap: () {
          context.read<HomeCubit>().toggleCheckBox(deadlineItem: deadlineItem);
        },
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            deadlineItem.isDone
                ? Icons.check_circle_rounded
                : Icons.circle_outlined,
            color: const Color.fromARGB(255, 207, 200, 200),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              deadlineItem.task,
              style: GoogleFonts.ubuntuMono(
                fontSize: 19,
                color: Colors.white,
                decoration:
                    deadlineItem.isDone ? TextDecoration.lineThrough : null,
              ),
            ),
            Text(
              deadlineItem.deadlineDateFormatted(),
              style: GoogleFonts.ubuntuMono(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
        trailing: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            margin: const EdgeInsets.all(3),
            // height: 110,
            width: 100,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(214, 204, 194, 1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  deadlineItem.daysLeft(),
                  style: GoogleFonts.ubuntuMono(
                    fontSize: 20,
                    color: Colors.black,
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Builder(
                  builder: (context) {
                    final suffix = deadlineItem.daysLeft() == '1'
                        ? 'day left'
                        : 'days left';
                    return Text(
                      suffix,
                      style: GoogleFonts.ubuntuMono(
                        fontSize: 12,
                        color: Colors.black,
                        textStyle: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
