import 'package:flutter/material.dart';
import 'package:mahar_code_test/service/api_repository.dart';
import 'package:mahar_code_test/service/api_repository_impl.dart';
import 'package:mahar_code_test/vo/movie_detail_vo.dart';

class DetailProvider extends ChangeNotifier {
  /// Bloc state
  bool isDisposed = false;

  /// Loading State
  bool isLoading = false;
  bool _isReadMore = false;
  bool _isFavorite = false;
  bool get isReadMore => _isReadMore;
  bool get isFavorite => _isFavorite;
  ApiRepository _apiRepository = ApiRepositoryImpl();
  MovieDetailVO? movieDetailVO;

  DetailProvider(int movieId) {
    _showLoading();
    _apiRepository.getDetail(movieId).then((movieDetail) {
      movieDetailVO = movieDetail;
      _notifySafely();
      _hideLoading();
    });
  }
  void toggleReadMore() {
    _isReadMore = !_isReadMore;
    notifyListeners();
  }

  void toggleFavorite() {
    _isFavorite = !_isFavorite;
    notifyListeners();
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
