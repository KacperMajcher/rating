import 'package:flutter/material.dart';
import 'package:rating/model/artist_model.dart';

class ArtistsDetailsPage extends StatelessWidget {
  const ArtistsDetailsPage({
    super.key,
    required this.artistModel,
  });

  final ArtistModel artistModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(artistModel.name),
        backgroundColor: const Color(0xFF525252),
        elevation: 0,
      ),
      backgroundColor: const Color(0xFF292929),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 90,
              backgroundImage:
                  AssetImage('assets/avatars/avatar${artistModel.place}.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white54,
              child: Center(
                child: Text(
                  artistModel.place.toString(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  artistModel.name,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.greenAccent,
              child: Center(
                child: Text(
                  artistModel.bio,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.red,
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text('title'), Text('views')],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: artistModel.topSongs.map((song) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(song.title),
                      Text(song.views.toString()),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
