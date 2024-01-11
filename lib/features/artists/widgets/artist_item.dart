import 'package:flutter/material.dart';
import 'package:rating/features/details/artists/pages/artists_details_page.dart';
import 'package:rating/model/artist_model.dart';

class ArtistItemWidget extends StatelessWidget {
  const ArtistItemWidget({
    Key? key,
    required this.artistModel,
  }) : super(key: key);

  final ArtistModel artistModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArtistsDetailsPage(
              artistModel: artistModel,
            ),
          ),
        );
      },
      child: Container(
        width: 250,
        height: 300,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          shadows: const [
            BoxShadow(color: Colors.white, blurRadius: 10, spreadRadius: 0),
          ],
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage(
                    'assets/graphics/artists_avatars/artist${artistModel.place}.png'),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '#${artistModel.place.toString()}',
                        style: const TextStyle(
                          fontSize: 30,
                          fontFamily: 'Jura',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        artistModel.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Jura',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
              ),
            ]),
      ),
    );
  }
}
