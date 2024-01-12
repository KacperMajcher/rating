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
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;
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
        width: dw * 0.6,
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
              SizedBox(height: dh * 0.005),
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage(
                    'assets/graphics/artists_avatars/artist${artistModel.place}.png'),
              ),
              SizedBox(height: dh * 0.005),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: dw * 0.04),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '#${artistModel.place.toString()}',
                        style: TextStyle(
                          fontSize: dh * 0.03,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        artistModel.name,
                        style: TextStyle(
                          fontSize: dh * 0.023,
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
