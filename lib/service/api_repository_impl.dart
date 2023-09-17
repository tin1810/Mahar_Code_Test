import 'package:dio/dio.dart';

import 'package:mahar_code_test/config/api_constant.dart';
import 'package:mahar_code_test/service/api_repository.dart';
import 'package:mahar_code_test/vo/genre_vo.dart';
import 'package:mahar_code_test/vo/movie_detail_vo.dart';
import 'package:mahar_code_test/vo/movie_vo.dart';

class ApiRepositoryImpl extends ApiRepository {
  final _dio = Dio(BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1),
      sendTimeout: const Duration(minutes: 1),
      contentType: 'application/json',
      headers: {
        'Accept': 'application/json; charset=UTF-8',
      }));

  @override
  Future<List<MovieVO>> getNowPlaying() async {
    try {
      final response = await _dio
          .get(ENDPOINT_GET_NOW_PLAYING, queryParameters: {"api_key": API_KEY});

      if (response.statusCode == 200) {
        List<dynamic> responseData = response.data["results"];

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
      final response = await _dio
          .get(ENDPOINT_GET_POPULAR, queryParameters: {"api_key": API_KEY});

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

  @override
  Future<List<GenreVO>> getGenre() async {
    try {
      final response = await _dio
          .get(ENDPOINT_GET_GENRES, queryParameters: {"api_key": API_KEY});

      if (response.statusCode == 200) {
        List<dynamic> responseData = response.data["genres"];

        return responseData.map((e) => GenreVO.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load genre list');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  @override
  Future<MovieDetailVO> getDetail(int movieId) async {
    try {
      final response = await _dio.get("$ENDPOINT_GET_MOVIE_DETAIL/$movieId",
          queryParameters: {"api_key": API_KEY});

      if (response.statusCode == 200) {
        var responseData = response.data;

        return MovieDetailVO.fromJson(responseData);
      } else {
        throw Exception('Failed to load genre list');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
