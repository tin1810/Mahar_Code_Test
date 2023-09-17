import 'package:mahar_code_test/vo/genre_vo.dart';
import 'package:mahar_code_test/vo/movie_detail_vo.dart';
import 'package:mahar_code_test/vo/movie_vo.dart';

abstract class ApiRepository {
  Future<List<MovieVO>> getNowPlaying();
  Future<List<MovieVO>> getPopular();
  Future<List<GenreVO>> getGenre();
  Future<MovieDetailVO> getDetail(int movieId);
}
