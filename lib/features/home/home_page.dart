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
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;

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
              backgroundColor: const Color(0xFF292929),
              body: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: dh * .095,
                        color: const Color(0xFF292929),
                      ),
                      Padding(
                        padding: EdgeInsets.all(dh * .024),
                        child: const SearchBoxDeadlines(),
                      ),
                    ],
                  ),
                  Container(
                    height: dh * .142,
                    color: const Color(0xFF292929),
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(dh * .024),
                        child: Text(
                          'App Planner: Upcoming Deadlines',
                          style: GoogleFonts.sono(
                            fontSize: dh * .036,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFEDEDE9),
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
                              child: Padding(
                                padding: EdgeInsets.only(right: dw * .085),
                                child: const Icon(Icons.delete,
                                    color: Colors.white),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: dw * .048),
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
    final double dw = MediaQuery.of(context).size.width;
    return SnackBar(
      content: Row(
        children: [
          SizedBox(width: dw * .024),
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
    final double dw = MediaQuery.of(context).size.width;

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
            SnackBar(
              content: Row(
                children: [
                  const Icon(
                    Icons.tag_faces_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: dw * .024,
                  ),
                  const Text('Alright, let\'s get to it, dude!'),
                ],
              ),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
