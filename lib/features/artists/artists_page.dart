import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/features/artists/cubit/artists_cubit.dart';
import 'package:rating/features/remote_data_sources/artist_remote_data_source.dart';
import 'package:rating/features/widgets/search_box.dart';
import 'package:rating/model/artist_model.dart';
import 'package:rating/repositories/artist_repository.dart';

class ArtistsPage extends StatelessWidget {
  const ArtistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
      body: BlocProvider<ArtistsCubit>(
        create: (context) {
          return ArtistsCubit(
            artistRepository: ArtistRepository(
              remoteDataSource: ArtistsMockedDataSource(),
            ),
          )..getArtistModels();
        },
        child: BlocBuilder<ArtistsCubit, ArtistsState>(
          builder: (context, state) {
            return Column(
              children: [
                const SizedBox(
                  height: 40,
                  child: Center(
                    child: Text(
                      'Artists',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 120,
                  width: 350,
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    'Meet \nour winners!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: searchBox(),
                ),
                SizedBox(
                  height: 275,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(12),
                    itemCount: state.artistModel.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 12);
                    },
                    itemBuilder: (context, index) {
                      final artistModel = state.artistModel[index];
                      return _ArtistItemWidget(
                        artistModel: artistModel,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Did your favorite \nmake it into the top 5?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 7),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "Isn't it? Give your vote to it!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Expanded(child: SizedBox())
              ],
            );
          },
        ),
      ),
    );
  }
}

class _ArtistItemWidget extends StatelessWidget {
  const _ArtistItemWidget({
    Key? key,
    required this.artistModel,
  }) : super(key: key);

  final ArtistModel artistModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 300,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Place: ${artistModel.place.toString()}',
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            artistModel.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
