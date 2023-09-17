import 'package:flutter/material.dart';

class DetailProvider extends ChangeNotifier {
  bool _isReadMore = false;

  bool get isReadMore => _isReadMore;

  void toggleReadMore() {
    _isReadMore = !_isReadMore;
    notifyListeners();
  }
}
