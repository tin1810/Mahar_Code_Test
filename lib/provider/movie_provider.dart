import 'package:flutter/material.dart';
import 'package:mahar_code_test/service/api_repository.dart';
import 'package:mahar_code_test/vo/genre_vo.dart';
import 'package:mahar_code_test/vo/movie_detail_vo.dart';
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
  List<GenreVO> genre = [];
  List<MovieVO> searchResults = [];

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
    _apiRepository.getGenre().then((genreList) {
      genre = genreList;
      _notifySafely();
      _hideLoading();
    });

  }

  ///search
  void search(String query) {
    final combinedMovies = [...nowPlaying, ...popular];

    final uniqueMovies = <MovieVO>[];
    for (final movie in combinedMovies) {
      final movieTitle = movie.title?.toLowerCase();
      final isUnique = uniqueMovies.every(
          (uniqueMovie) => uniqueMovie.title?.toLowerCase() != movieTitle);
      if (isUnique &&
          movieTitle != null &&
          movieTitle.contains(query.toLowerCase())) {
        uniqueMovies.add(movie);
      }
    }

    searchResults = uniqueMovies;
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
