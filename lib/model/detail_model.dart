import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailModel extends ChangeNotifier {
  bool _isReadMore = false;

  bool get isReadMore => _isReadMore;

  void toggleReadMore() {
    _isReadMore = !_isReadMore;
    notifyListeners();
  }
}
