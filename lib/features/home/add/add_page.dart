import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocProvider(
      create: (context) => AddCubit(),
      child: BlocBuilder<AddCubit, AddState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color(0xFF292929),
            appBar: AppBar(
              backgroundColor: const Color(0xFF292929),
              elevation: 0,
              title: const Text('What needs to be done, boss?'),
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
              selectedDateFormatted: _deadline?.toIso8601String(),
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
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      children: [
        TextField(
          style: const TextStyle(color: Colors.white),
          onChanged: onTitleChanged,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(82, 82, 82, 1),
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
        const SizedBox(height: 20),
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
                  child: child ?? const Text('Choose date'),
                );
              },
            );
            onDateChanged(selectedDate);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
          child: Text(selectedDateFormatted ?? 'Choose date'),
        )
      ],
    );
  }
}