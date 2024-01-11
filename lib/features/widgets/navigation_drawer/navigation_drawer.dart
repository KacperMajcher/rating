import 'package:flutter/material.dart';
import 'package:rating/features/widgets/navigation_drawer/build_header.dart';
import 'package:rating/features/widgets/navigation_drawer/build_logo.dart';
import 'package:rating/features/widgets/navigation_drawer/build_menu_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color.fromRGBO(33, 37, 41, 1),
      shadowColor: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            BuildHeader(),
            SizedBox(height: 20),
            RatingLogo(),
            SizedBox(height: 20),
            MenuItems(),
          ],
        ),
      ),
    );
  }
}
