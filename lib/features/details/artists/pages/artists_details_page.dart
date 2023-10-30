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
      backgroundColor: const Color(0xFF0A0A0A),
      body: Column(
        children: [
          const SizedBox(
            height: 85,
          ),
          Container(
            child: Center(
              child: Text(
                artistModel.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: Column(
              children: [
                Image(
                  height: 200,
                  width: 200,
                  image: AssetImage(
                      'assets/avatars/avatar${artistModel.place}.png'),
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      artistModel.bio,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Mukta',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(20),
                  height: 245,
                  decoration: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Best songs',
                                style: TextStyle(
                                  color: Color(0xFF5C3F06),
                                  fontSize: 15,
                                  fontFamily: 'Mukta',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Views',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF5C3F06),
                                  fontSize: 15,
                                  fontFamily: 'Mukta',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: artistModel.topSongs.map((song) {
                          return Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(
                                  height: 40,
                                  width: 40,
                                  image: AssetImage(
                                      'assets/album_covers/album_cover${artistModel.place}.png'),
                                ),
                              ),
                              Text(
                                song.title,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Mukta',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Expanded(child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  song.views.toString(),
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
