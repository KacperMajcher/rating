import 'package:flutter_test/flutter_test.dart';
import 'package:rating/model/artist_model.dart';

void main() {
  final Map<String, dynamic> testArtistMap = {
    'place': 4,
    'name': 'test-name',
    'bio': 'test-bio',
    'top_songs': [
      {
        'title': 'test-title-one',
        'views': 9,
      },
      {
        'title': 'test-title-two',
        'views': 100,
      },
    ],
  };

  test('provided Map should supply the desired Model ', () {
    //1
    final expected = ArtistModel(
      4,
      'test-name',
      'test-bio',
      [
        TopSongsModel('test-title-one', 9),
        TopSongsModel('test-title-two', 100),
      ],
    );
    //2
    final result = ArtistModel.fromJson(testArtistMap);
    //3
    expect(result, expected);
  });
}