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
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(vertical: dh * 0.005),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xFF525252),
      ),
      child: ListTile(
        onTap: () {
          context.read<HomeCubit>().toggleCheckBox(deadlineItem: deadlineItem);
        },
        leading: Padding(
          padding: EdgeInsets.all(dh * 0.006),
          child: Icon(
            deadlineItem.isDone
                ? Icons.check_circle_rounded
                : Icons.circle_outlined,
            color: const Color(0xFFCFC8C8),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              deadlineItem.task,
              style: GoogleFonts.ubuntuMono(
                fontSize: dh * .022,
                color: Colors.white,
                decoration:
                    deadlineItem.isDone ? TextDecoration.lineThrough : null,
              ),
            ),
            Text(
              deadlineItem.deadlineDateFormatted(),
              style: GoogleFonts.ubuntuMono(
                fontSize: dh * .018,
                color: Colors.white,
              ),
            ),
          ],
        ),
        trailing: Padding(
          padding: EdgeInsets.all(dh * 0.002),
          child: Container(
            margin: EdgeInsets.all(dh * 0.002),
            width: dw * 0.24,
            decoration: BoxDecoration(
              color: const Color(0xFFD6CCC2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  deadlineItem.daysLeft(),
                  style: GoogleFonts.ubuntuMono(
                    fontSize: dh * .024,
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
                        fontSize: dh * .015,
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
