import 'package:flutter_test/flutter_test.dart';
import 'package:rating/model/podcaster_model.dart';

void main() {
  final Map<String, dynamic> testPodcasterMap = {
    'place': 4,
    'name': 'test-name',
    'bio': 'test-bio',
    'top_podcasts': [
      {
        'title': 'test-title-one',
        'listeners': 9,
        'coverNumber': 1,
      },
      {
        'title': 'test-title-two',
        'listeners': 100,
        'coverNumber': 2,
      },
    ],
  };

  test('provided Map should supply the desired Model ', () {
    //1
    final expected = PodcasterModel(
      4,
      'test-name',
      'test-bio',
      [
        TopPodcastsModel('test-title-one', 9, 1),
        TopPodcastsModel('test-title-two', 100, 2),
      ],
    );
    //2
    final result = PodcasterModel.fromJson(testPodcasterMap);
    //3
    expect(result, expected);
  });
}