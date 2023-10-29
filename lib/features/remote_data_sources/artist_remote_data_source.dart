class ArtistsMockedDataSource {
  Future<List<Map<String, dynamic>>?> getArtists() async {
    return [
      {
        'place': 1,
        'name': 'James Smith',
        'bio':
            'James Smith is a talented musician known for his soulful melodies and powerful lyrics. His music resonates with people from all walks of life.',
        'top_songs': [
          {
            'title': "Mplacenight Serenade",
            'views': '180000000',
          },
          {
            'title': "Starry Night Dreams",
            'views': '220000000',
          },
          {
            'title': "Sweet Melody of Love",
            'views': '160000000',
          },
        ]
      },
      {
        'place': 2,
        'name': 'Sarah Johnson',
        'bio':
            'Sarah Johnson is a rising star in the music industry, with a unique blend of pop and rock influences in her songs. Her voice captivates audiences worldwide.',
        'top_songs': [
          {
            'title': "Mplacenight Serenade",
            'views': '180000000',
          },
          {
            'title': "Starry Night Dreams",
            'views': '220000000',
          },
          {
            'title': "Sweet Melody of Love",
            'views': '160000000',
          },
        ]
      },
    ];
  }
}