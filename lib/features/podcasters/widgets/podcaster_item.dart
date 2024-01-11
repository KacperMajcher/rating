import 'package:flutter/material.dart';
import 'package:rating/features/details/podcasters/pages/podcasters_details_page.dart';
import 'package:rating/model/podcaster_model.dart';

class PodcasterItemWidget extends StatelessWidget {
  const PodcasterItemWidget({
    Key? key,
    required this.podcasterModel,
  }) : super(key: key);

  final PodcasterModel podcasterModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PodcastersDetailsPage(
              podcasterModel: podcasterModel,
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
                    'assets/graphics/podcasters_avatars/podcaster${podcasterModel.place}.png'),
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
                    '#${podcasterModel.place.toString()}',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    podcasterModel.name,
                    style: const TextStyle(
                      fontSize: 20,
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