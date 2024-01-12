import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating/app/core/enums.dart';
import 'package:rating/app/injection_container.dart';
import 'package:rating/features/podcasters/cubit/podcasters_cubit.dart';
import 'package:rating/features/podcasters/widgets/podcaster_item.dart';
import 'package:rating/features/widgets/search_box2.dart';

class PodcastersPage extends StatelessWidget {
  const PodcastersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double dw = MediaQuery.of(context).size.width;
    final double dh = MediaQuery.of(context).size.height;

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
                  height: dh * 0.33,
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
                      SizedBox(
                        height: dh * 0.05,
                        child: Center(
                          child: Text(
                            'Podcasters',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: dh * 0.045,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: dh * 0.02),
                      Container(
                        height: dh * 0.142,
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: dw * 0.06),
                          child: Text(
                            'Meet \nour winners!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: dh * 0.05,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: dh * 0.028),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: CustomSearchBox2(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: dh * 0.028),
                SizedBox(
                  height: dh * 0.33,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(12),
                    itemCount: state.podcasterModel.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: dw * 0.03);
                    },
                    itemBuilder: (context, index) {
                      final podcasterModel = state.podcasterModel[index];
                      return PodcasterItemWidget(
                        podcasterModel: podcasterModel,
                      );
                    },
                  ),
                ),
                SizedBox(height: dh * 0.03),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Did your favorite \nmake it into the top 5?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: dh * 0.039,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: dh * 0.01),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Isn't it? Give your vote to it!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: dh * 0.013,
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

