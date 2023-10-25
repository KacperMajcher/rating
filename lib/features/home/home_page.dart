import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/features/home/cubit/home_cubit.dart';
import 'package:rating/features/widgets/deadline_item.dart';
import 'package:rating/features/widgets/navigation_drawer.dart';

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
        return Scaffold(
          appBar: _buildAppBar(),
          drawer: navigationDrawer(context),
          backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 15),
                searchBoxDeadlines(),
                const SizedBox(height: 23),
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
                    for (final deadline in state.deadlineItem)
                      DeadlineItemWidget(
                        deadlineItem: deadline,
                      ),
                  ]),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Deadlines'),
      backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
      elevation: 0,
    );
  }

  Widget searchBoxDeadlines() {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(61, 61, 61, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) {
          context.read<HomeCubit>().filterItems(value);
        },
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Color.fromRGBO(232, 93, 4, 1),
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
              color: Color.fromRGBO(155, 155, 149, 1),
              fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}
