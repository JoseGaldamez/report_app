import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class ReportProvider with ChangeNotifier {
  final List<File> _images = [];
  Position? _position;
  String _comment = '';

  List<File> get images => _images;
  Position? get position => _position;
  String get comment => _comment;

  void addImage(File image) {
    _images.add(image);
    notifyListeners();
  }

  void clearImages() {
    _images.clear();
    notifyListeners();
  }

  void setPosition(Position? position) {
    _position = position;
    notifyListeners();
  }

  void setComment(String newComment) {
    _comment = newComment;
    notifyListeners();
  }
}
