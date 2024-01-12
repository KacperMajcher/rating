import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/features/home/cubit/home_cubit.dart';

class SearchBoxDeadlines extends StatelessWidget {
  const SearchBoxDeadlines({super.key});

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;
    return Container(
      height: dh * 0.06,
      padding: EdgeInsets.symmetric(
        horizontal: dw * 0.04,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF3D3D3D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) {
          context.read<HomeCubit>().filterItems(value);
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          prefixIcon: Icon(
            Icons.search,
            color: const Color(0xFFE85D04),
            size: dh * 0.024,
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: dw * 0.06,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: const TextStyle(
              color: Color(0xFF9B9B95), fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}
