import 'package:mahar_code_test/vo/now_playing_vo.dart';

abstract class ApiRepository {
  Future<List<MovieVO>> getNowPlaying();
  Future<List<MovieVO>> getPopular();
}
