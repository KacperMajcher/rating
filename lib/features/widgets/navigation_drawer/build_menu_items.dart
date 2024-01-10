import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating/features/artists/artists_page.dart';
import 'package:rating/features/home/home_page.dart';
import 'package:rating/features/podcasters/podcasters_page.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
              MaterialPageRoute(
                  builder: (context) => const ArtistsPage(),
                  fullscreenDialog: true),
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
              MaterialPageRoute(
                  builder: (context) => const PodcastersPage(),
                  fullscreenDialog: true),
            );
          },
          contentPadding: const EdgeInsets.all(10),
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
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
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
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
        ),
      ],
    );
  }
}
