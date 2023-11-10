import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/app/injection_container.dart';
import 'package:rating/features/details/podcasters/pages/podcasters_details_page.dart';
import 'package:rating/features/podcasters/cubit/podcasters_cubit.dart';
import 'package:rating/features/widgets/search_box.dart';
import 'package:rating/model/podcaster_model.dart';

class PodcastersPage extends StatelessWidget {
  const PodcastersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(82, 82, 82, 1),
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
      body: BlocProvider<PodcastersCubit>(
        create: (context) {
          return getIt<PodcastersCubit>()..getPodcasterModels();
        },
        child: BlocConsumer<PodcastersCubit, PodcastersState>(
          listener: (context, state) {
            if (state.status == Status.error) {
              final errorMessage = state.errorMessage ?? 'Unkown error';
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(errorMessage),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                Container(
                  height: 280,
                  decoration: const ShapeDecoration(
                    color: Color.fromRGBO(82, 82, 82, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                        child: Center(
                          child: Text(
                            'Podcasters',
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
                      const SizedBox(height: 23),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: searchBox(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 275,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(12),
                    itemCount: state.podcasterModel.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 12);
                    },
                    itemBuilder: (context, index) {
                      final podcasterModel = state.podcasterModel[index];
                      return _PodcasterItemWidget(
                        podcasterModel: podcasterModel,
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
              ],
            );
          },
        ),
      ),
    );
  }
}

class _PodcasterItemWidget extends StatelessWidget {
  const _PodcasterItemWidget({
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
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '#${podcasterModel.place.toString()}',
                          style: const TextStyle(
                            fontSize: 30,
                            fontFamily: 'Jura',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          podcasterModel.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Jura',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                ),
              ),
            ]),
      ),
    );
  }
}
