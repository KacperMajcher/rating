import 'package:rating/model/artist_model.dart';

class ArtistsMockedDataSource {
  Future<List<ArtistModel>> getArtists() async {
    return [
      ArtistModel(
        place: 1,
        name: 'James Smith',
        bio:
            'James Smith is a talented musician known for his soulful melodies and powerful lyrics. His music resonates with people from all walks of life.',
        topSongs: [
          TopSongsModel(title: "Mplacenight Serenade", views: 180000000),
          TopSongsModel(title: "Starry Night Dreams", views: 220000000),
          TopSongsModel(title: "Sweet Melody of Love", views: 160000000),
        ],
      ),
      ArtistModel(
        place: 2,
        name: 'Sarah Johnson',
        bio:
            'Sarah Johnson is a rising star in the music industry, with a unique blend of pop and rock influences in her songs. Her voice captivates audiences worldwide.',
        topSongs: [
          TopSongsModel(title: "Mplacenight Serenade", views: 180000000),
          TopSongsModel(title: "Starry Night Dreams", views: 220000000),
          TopSongsModel(title: "Sweet Melody of Love", views: 160000000),
        ],
      ),
      ArtistModel(
        place: 3,
        name: 'David Wilson',
        bio:
            'David Wilson is an instrumental virtuoso, creating beautiful soundscapes that transport listeners to otherworldly realms.',
        topSongs: [
          TopSongsModel(title: "Mplacenight Serenade", views: 180000000),
          TopSongsModel(title: "Starry Night Dreams", views: 220000000),
          TopSongsModel(title: "Sweet Melody of Love", views: 160000000),
        ],
      ),
      ArtistModel(
        place: 4,
        name: 'Emily Brown',
        bio:
            'Emily Brown\'s music is a fusion of folk and indie, with heartfelt lyrics that tell stories of life, love, and everything in between.',
        topSongs: [
          TopSongsModel(title: "Mplacenight Serenade", views: 180000000),
          TopSongsModel(title: "Starry Night Dreams", views: 220000000),
          TopSongsModel(title: "Sweet Melody of Love", views: 160000000),
        ],
      ),
      ArtistModel(
        place: 5,
        name: 'John Taylor',
        bio:
            'John Taylor is a master of electronic music, pushing the boundaries of sonic possibilities and creating immersive experiences for his listeners.',
        topSongs: [
          TopSongsModel(title: "Mplacenight Serenade", views: 180000000),
          TopSongsModel(title: "Starry Night Dreams", views: 220000000),
          TopSongsModel(title: "Sweet Melody of Love", views: 160000000),
        ],
      ),
    ];
  }
}