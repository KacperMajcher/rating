import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/features/artists/artists_page.dart';
import 'package:rating/features/podcasters/podcasters_page.dart';


Widget navigationDrawer(BuildContext context) => Drawer(
      backgroundColor: const Color.fromRGBO(33, 37, 41, 1),
      shadowColor: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            const SizedBox(height: 20),
            buildLogo(context),
            const SizedBox(height: 20),
            buildMenuItems(context),
          ],
        ),
      ),
    );


Widget buildHeader(BuildContext context) => Container(
      decoration: const ShapeDecoration(
        color: Color.fromRGBO(82, 82, 82, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
        ),
      ),
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 130,
            height: 130,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/icons/user_avatar.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'What\'s up, (user_name)?',
              style: GoogleFonts.inconsolata(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Welcome in RatingProject!',
              style: GoogleFonts.inconsolata(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(173, 181, 189, 1),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your profile ',
                      style: GoogleFonts.inconsolata(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );

Widget buildLogo(BuildContext context) => Padding(
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

Widget buildMenuItems(BuildContext context) => Wrap(
      runSpacing: 16,
      children: [
        const Divider(
          color: Colors.white30,
        ),
        ListTile(
          leading: Image.asset(
            'assets/icons/music_microphone.png',
            color: Colors.white,
            fit: BoxFit.cover,
          ),
          title: const Text(
            'Top Artists',
          ),
          titleTextStyle: GoogleFonts.inconsolata(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ArtistsPage()),
            );
          },
          contentPadding: const EdgeInsets.all(10),
        ),
        ListTile(
          leading: Image.asset(
            'assets/icons/podcast_microphone.png',
            color: Colors.white,
            fit: BoxFit.cover,
          ),
          title: const Text(
            'Top Podcasters',
          ),
          titleTextStyle: GoogleFonts.inconsolata(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PodcastersPage()),
            );
          },
          contentPadding: const EdgeInsets.all(10),
        ),
        const Divider(
          color: Colors.white30,
        ),
      ],
    );
