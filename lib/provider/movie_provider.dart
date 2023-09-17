import 'package:flutter/material.dart';
import 'package:mahar_code_test/service/api_repository.dart';
import 'package:mahar_code_test/vo/now_playing_vo.dart';

import '../service/api_repository_impl.dart';

class MovieProvider extends ChangeNotifier {
  /// Bloc state
  bool isDisposed = false;

  /// Loading State
  bool isLoading = false;

  /// dependency
  ApiRepository _apiRepository = ApiRepositoryImpl();

  /// states
  List<MovieVO> nowPlaying = [];
  List<MovieVO> popular = [];

  MovieProvider() {
    _showLoading();
    _apiRepository.getNowPlaying().then((nowmovieList) {
      nowPlaying = nowmovieList;
      _notifySafely();
      _hideLoading();
    });
    _apiRepository.getPopular().then((popularmovieList) {
      popular = popularmovieList;
      _notifySafely();
      _hideLoading();
    });
  }

  /// loading situations
  void _showLoading() {
    isLoading = true;
    _notifySafely();
  }

  void _hideLoading() {
    isLoading = false;
    _notifySafely();
  }

  void _notifySafely() {
    if (!isDisposed) {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    super.dispose();
    isDisposed = true;
  }
}
