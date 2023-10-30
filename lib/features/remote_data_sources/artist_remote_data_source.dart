import 'package:dio/dio.dart';

class ArtistsRemoteDioDataSource {
  Future<List<Map<String, dynamic>>?> getArtistData() async {
    try {
      final response = await Dio().get<List<dynamic>>(
          'https://my-json-server.typicode.com/KacperMajcher/FreeDataBaseForProjects/artists');
      final listDynamic = response.data;
      if (listDynamic == null) {
        return null;
      }
      return listDynamic.map((e) => e as Map<String, dynamic>).toList();
    } on DioException catch (error) {
      throw Exception(error.response?.data['error'] ?? 'Unknown error');
    }
  }
}
