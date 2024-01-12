import 'package:flutter/material.dart';

class CustomSearchBox2 extends StatelessWidget {
  const CustomSearchBox2({super.key});

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;
    return Container(
      height: dh * 0.058,
      padding: EdgeInsets.symmetric(
        horizontal: dw * 0.04,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF3D3D3D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: const Color.fromRGBO(232, 93, 4, 1),
            size: dh * 0.024,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: dh * 0.024,
            minWidth: dw * 0.06,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: const TextStyle(
              color: Color.fromRGBO(155, 155, 149, 1),
              fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}
