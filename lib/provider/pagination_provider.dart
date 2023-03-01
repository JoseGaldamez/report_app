import 'package:flutter/material.dart';
import 'package:reportes/widgets/pages/pages.dart';

class PaginationProvider with ChangeNotifier {
  int _currentPage = 0;

  final List<Widget> _pages = const [
    SelectPhotosPage(),
    LocationPage(),
    CommentsPage(),
    ResumenPage()
  ];

  Widget get currentPageWidget => _pages[_currentPage];

  void nextPage() {
    if (_pages.length - 1 == _currentPage) {
      return;
    }
    _currentPage++;
    notifyListeners();
  }

  void previousPage() {
    if (_currentPage == 0) {
      return;
    }
    _currentPage--;
    notifyListeners();
  }

  void initPagination() {
    _currentPage = 0;
    notifyListeners();
  }
}
