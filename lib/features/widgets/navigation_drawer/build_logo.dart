import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingLogo extends StatelessWidget {
  const RatingLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/icons/rating.png',
            color: Colors.white,
            fit: BoxFit.cover,
            width: 70,
          ),
          Text(
            'RATING',
            style: GoogleFonts.inconsolata(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
