import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/features/artists/cubit/artists_cubit.dart';
import 'package:rating/features/widgets/navigation_drawer.dart';

class ArtistsPage extends StatelessWidget {
  const ArtistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArtistsCubit()..getArtistItems(),
      child: BlocBuilder<ArtistsCubit, ArtistsState>(
        builder: (context, state) {
          final artistModel = state.artistModel;
          return Scaffold(
            appBar: AppBar(
              title: const Text('Top Artists'),
              backgroundColor: const Color(0xFF292929),
              elevation: 0,
            ),
            drawer: navigationDrawer(context),
            body: Center(
              child: Column(children: [
                const SizedBox(
                  height: 250,
                ),
                Container(
                  color: Colors.red,
                  height: 70,
                  child: Center(
                    child: Column(
                      children: [
                        Text('place: ${artistModel!.place.toString()}'),
                        Text(artistModel.name),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 70,
                  color: Colors.green,
                  child: const Center(
                    child: Column(
                      children: [
                        Text('place: 2'),
                        Text('Emily Johnson'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 70,
                  color: Colors.blue,
                  child: const Center(
                    child: Column(
                      children: [
                        Text('place: 3'),
                        Text('Michael Davis'),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
