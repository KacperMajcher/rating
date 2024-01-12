import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingLogo extends StatelessWidget {
  const RatingLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: dw * 0.11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/icons/rating.png',
            color: Colors.white,
            fit: BoxFit.cover,
            width: dw * 0.16,
          ),
          Text(
            'RATING',
            style: GoogleFonts.inconsolata(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: dh * 0.039,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
