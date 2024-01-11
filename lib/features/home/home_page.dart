import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/app/core/config.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/features/home/add/add_page.dart';
import 'package:rating/features/home/cubit/home_cubit.dart';
import 'package:rating/features/home/widgets/search_box_deadlines.dart';
import 'package:rating/features/widgets/app_bar.dart';
import 'package:rating/features/widgets/deadline_item.dart';
import 'package:rating/features/widgets/navigation_drawer/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        switch (state.status) {
          case Status.initial:
            return const Scaffold(
              body: Center(
                child: Text(
                    'Hello! Honestly speaking... you shouldn\'t be here 😬!'),
              ),
            );
          case Status.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );

          case Status.error:
            return Scaffold(
              body: Center(
                child: Text(
                  state.errorMessage ?? 'Unknown error',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            );

          case Status.success:
            return Scaffold(
              floatingActionButton: PlusButton(mounted: mounted),
              appBar: const CustomAppBar(),
              drawer: const CustomDrawer(),
              backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
              body: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 80,
                        color: const Color.fromRGBO(41, 41, 41, 1),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: SearchBoxDeadlines(),
                      ),
                    ],
                  ),
                  Container(
                    height: 120,
                    color: const Color.fromRGBO(41, 41, 41, 1),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
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
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        for (final deadline in state.deadlineItem)
                          Dismissible(
                            key: ValueKey(deadline.id),
                            onDismissed: (direction) async {
                              await context
                                  .read<HomeCubit>()
                                  .remove(documentID: deadline.id);
                              if (mounted) {
                                final snackBarBackgroundColor =
                                    Config.snackBarOnRemoveColor;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  buildSnackBar(
                                    message: Config.showSnackBarOnRemove,
                                    backgroundColor: snackBarBackgroundColor,
                                  ),
                                );
                              }
                            },
                            confirmDismiss: (direction) async {
                              if (Config.removePermission) {
                                return direction == DismissDirection.endToStart;
                              } else {
                                final snackBarBackgroundColor =
                                    Config.snackBarOnRemoveColor;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  buildSnackBar(
                                    message: Config.showSnackBarOnRemove,
                                    backgroundColor: snackBarBackgroundColor,
                                  ),
                                );
                              }
                              return null;
                            },
                            background: Container(
                              alignment: Alignment.centerRight,
                              child: const Padding(
                                padding: EdgeInsets.only(right: 35),
                                child: Icon(Icons.delete, color: Colors.white),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: DeadlineItemWidget(
                                deadlineItem: deadline,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            );
        }
      },
    );
  }

  SnackBar buildSnackBar({
    required String message,
    required Color backgroundColor,
  }) {
    return SnackBar(
      content: Row(
        children: [
          const SizedBox(width: 10),
          Text(message),
        ],
      ),
      backgroundColor: backgroundColor,
    );
  }
}

class PlusButton extends StatelessWidget {
  const PlusButton({
    super.key,
    required this.mounted,
  });

  final bool mounted;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
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
