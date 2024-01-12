import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/app/injection_container.dart';
import 'package:rating/features/home/add/cubit/add_cubit.dart';

class AddPage extends StatefulWidget {
  const AddPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String? _task;
  DateTime? _deadline;
  final bool _isDone = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddCubit>(
      create: (context) {
        return getIt();
      },
      child: BlocConsumer<AddCubit, AddState>(
        listener: (context, state) {
          if (state.status == Status.success) {
            Navigator.of(context).pop(true);
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color(0xFF292929),
            appBar: AppBar(
              backgroundColor: const Color(0xFF292929),
              elevation: 0,
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.close_rounded, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  );
                },
              ),
              title: const Text(
                'What needs to be done, boss?',
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                IconButton(
                  onPressed: _task == null || _deadline == null
                      ? null
                      : () {
                          context.read<AddCubit>().add(
                                _task!,
                                _isDone,
                                _deadline!,
                              );
                        },
                  icon: const Icon(Icons.check),
                ),
              ],
            ),
            body: _AddPageBody(
              onTitleChanged: (newValue) {
                setState(() {
                  _task = newValue;
                });
              },
              onDateChanged: (newValue) {
                setState(() {
                  _deadline = newValue;
                });
              },
              selectedDateFormatted: _deadline == null
                  ? null
                  : DateFormat.yMMMMEEEEd().format(_deadline!),
            ),
          );
        },
      ),
    );
  }
}

class _AddPageBody extends StatelessWidget {
  const _AddPageBody({
    Key? key,
    required this.onTitleChanged,
    required this.onDateChanged,
    this.selectedDateFormatted,
  }) : super(key: key);

  final Function(String) onTitleChanged;
  final Function(DateTime?) onDateChanged;
  final String? selectedDateFormatted;

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: dh * .035,
        vertical: dw * .049,
      ),
      children: [
        TextField(
          style: const TextStyle(color: Colors.white),
          onChanged: onTitleChanged,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color(0xFF525252),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: 'What\'s new?',
            hintStyle: TextStyle(color: Colors.white),
            label: Text(
              'Task',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: dh * .024),
        ElevatedButton(
          onPressed: () async {
            final selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(
                const Duration(days: 365 * 5),
              ),
              builder: (context, child) {
                return Theme(
                  data: ThemeData(
                    colorScheme: const ColorScheme.dark(
                      primary: Color(0xFFE85D04),
                      onPrimary: Colors.white,
                      surface: Colors.black,
                      onSurface: Colors.white,
                    ),
                  ),
                  child: child ??
                      const Text(
                        'Choose date',
                      ),
                );
              },
            );
            onDateChanged(selectedDate);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
          child: Text(
            selectedDateFormatted ?? 'Choose date',
            style: const TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
