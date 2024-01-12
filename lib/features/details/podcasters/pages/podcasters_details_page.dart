import 'package:flutter/material.dart';
import 'package:rating/model/podcaster_model.dart';

class PodcastersDetailsPage extends StatelessWidget {
  const PodcastersDetailsPage({
    super.key,
    required this.podcasterModel,
  });

  final PodcasterModel podcasterModel;

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: Column(
        children: [
          SizedBox(height: dh * 0.1),
          Center(
            child: Text(
              podcasterModel.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: dh * .0415,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: dh * 0.018),
          Expanded(
            child: Column(
              children: [
                Image(
                  width: dw * .485,
                  image: AssetImage(
                      'assets/graphics/podcasters_avatars/podcaster${podcasterModel.place}.png'),
                  fit: BoxFit.fill,
                ),
                SizedBox(height: dh * .035),
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.all(dh * .035),
                    child: Text(
                      podcasterModel.bio,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: dh * .019,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(dh * .024),
                  height: dh * .29,
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: dw * .036),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Best podcasts',
                              style: TextStyle(
                                color: const Color(0xFF5C3F06),
                                fontSize: dh * .017,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Listens',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: const Color(0xFF5C3F06),
                                fontSize: dh * .017,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: dh * .017),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: podcasterModel.topPodcasts.map((podcast) {
                          final imagePath =
                              'assets/graphics/podcasters_avatars/podcaster_cover_${podcasterModel.place}/${podcast.coverNumber}.png';

                          return Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(dh * 0.009),
                                child: Image(
                                  height: dh * .047,
                                  image: AssetImage(imagePath),
                                ),
                              ),
                              Text(
                                podcast.title,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: dh * .021,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: EdgeInsets.all(dh * 0.009),
                                child: Text(
                                  podcast.listeners.toString(),
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: dh * .0155,
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
