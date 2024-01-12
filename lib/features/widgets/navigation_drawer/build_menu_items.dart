import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/features/artists/artists_page.dart';
import 'package:rating/features/home/home_page.dart';
import 'package:rating/features/podcasters/podcasters_page.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;
    
    return Wrap(
      runSpacing: dw * 0.039,
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
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: dh * 0.03,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ArtistsPage(),
                  fullscreenDialog: true),
            );
          },
          contentPadding: EdgeInsets.all(dh * 0.012),
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
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: dh * 0.03,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PodcastersPage(),
                  fullscreenDialog: true),
            );
          },
          contentPadding: EdgeInsets.all(dh * 0.012),
        ),
        const Divider(
          color: Colors.white30,
        ),
        ListTile(
          leading: Image.asset(
            'assets/icons/deadline.png',
            color: Colors.white,
            fit: BoxFit.cover,
          ),
          title: const Text(
            'Deadlines',
          ),
          titleTextStyle: GoogleFonts.inconsolata(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: dh * 0.024,
              fontWeight: FontWeight.w600,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
          contentPadding: EdgeInsets.symmetric(
              horizontal: dw * 0.145, vertical: dh * 0.012),
        ),
      ],
    );
  }
}
