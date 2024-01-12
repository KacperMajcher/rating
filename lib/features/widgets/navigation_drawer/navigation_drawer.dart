import 'package:flutter/material.dart';
import 'package:rating/features/widgets/navigation_drawer/build_header.dart';
import 'package:rating/features/widgets/navigation_drawer/rating_logo.dart';
import 'package:rating/features/widgets/navigation_drawer/build_menu_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final double dh = MediaQuery.of(context).size.height;

    return Drawer(
      backgroundColor: const Color(0xFF212529),
      shadowColor: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const BuildHeader(),
            SizedBox(height: dh * 0.023),
            const RatingLogo(),
            SizedBox(height: dh * 0.023),
            const MenuItems(),
          ],
        ),
      ),
    );
  }
}
