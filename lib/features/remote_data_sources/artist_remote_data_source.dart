import 'package:dio/dio.dart';

class ArtistsRemoteDioDataSource {
  Future<List<Map<String, dynamic>>?> getArtistData() async {
    final response = await Dio().get<List<dynamic>>(
        'https://my-json-server.typicode.com/KacperMajcher/FreeDataBaseForProjects/artists');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
