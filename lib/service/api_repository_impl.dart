import 'package:dio/dio.dart';

import 'package:mahar_code_test/config/api_constant.dart';
import 'package:mahar_code_test/service/api_repository.dart';
import 'package:mahar_code_test/vo/now_playing_vo.dart';

class ApiRepositoryImpl extends ApiRepository {
  final _dio = Dio(BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: Duration(minutes: 1),
      receiveTimeout: Duration(minutes: 1),
      sendTimeout: Duration(minutes: 1),
      contentType: 'application/json',
      headers: {
        'Accept': 'application/json; charset=UTF-8',
      }));

  @override
  Future<List<MovieVO>> getNowPlaying() async {
    try {
      final response = await _dio.get(ENDPOINT_GET_NOW_PLAYING,
          queryParameters: {"api_key": "18ac236c319a44d7235934101c3393c7"});

      if (response.statusCode == 200) {
        // Parse the response data as a List<dynamic>
        List<dynamic> responseData = response.data["results"];

        // Map the dynamic list to NowPlayingVO objects and return it
        return responseData.map((e) => MovieVO.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load now playing movies');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  @override
  Future<List<MovieVO>> getPopular() async {
    try {
      final response = await _dio.get(ENDPOINT_GET_POPULAR,
          queryParameters: {"api_key": "18ac236c319a44d7235934101c3393c7"});

      if (response.statusCode == 200) {
        List<dynamic> responseData = response.data["results"];

        return responseData.map((e) => MovieVO.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load popular movies');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
