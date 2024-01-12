import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/features/auth/pages/user_profile.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;
    

    return Container(
      decoration: const ShapeDecoration(
        color: Color(0xFF525252),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
        ),
      ),
      padding: EdgeInsets.only(top: dh * 0.047),
      child: Column(
        children: [
          SizedBox(height: dh * 0.038),
          Container(
            width: dw * 0.315,
            height: dh * 0.16,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/icons/user_avatar.png'),
              ),
            ),
          ),
          SizedBox(height: dh * .024),
          Center(
            child: Text(
              'What\'s up, (user_name)?',
              style: GoogleFonts.inconsolata(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: dh * 0.02,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: dh * .012),
          Center(
            child: Text(
              'Welcome in RatingProject!',
              style: GoogleFonts.inconsolata(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: dh * .024,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: dh * .012),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: dw * 0.17),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserProfile()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFADB5BD),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your profile ',
                      style: GoogleFonts.inconsolata(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: dh * 0.0175,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: dh * 0.019,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: dh * .024),
        ],
      ),
    );
  }
}
