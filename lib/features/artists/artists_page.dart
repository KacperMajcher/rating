import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/features/artists/cubit/artists_cubit.dart';
import 'package:rating/features/remote_data_sources/artist_remote_data_source.dart';
import 'package:rating/features/widgets/navigation_drawer.dart';
import 'package:rating/model/artist_model.dart';
import 'package:rating/repositories/artist_repository.dart';

class ArtistsPage extends StatelessWidget {
  const ArtistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Top Artists'),
          backgroundColor: const Color(0xFF292929),
          elevation: 0,
        ),
        drawer: navigationDrawer(context),
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
              return ListView(
                children: [
                  for (final author in state.artistModel)
                    _ArtistItemWidget(
                      artistModel: author,
                    ),
                ],
              );
            },
          ),
        ));
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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 30,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        color: Colors.black12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('place: '),
            Text(artistModel.place.toString()),
            const SizedBox(
              width: 7,
            ),
            Text(artistModel.name),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
