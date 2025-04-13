
import 'package:flutter/material.dart';
import '../../core/models/book_model.dart';
import '../../data/remote/book_service.dart';

class BookViewModel extends ChangeNotifier {
  final BookService _service = BookService();
  List<BookModel> books = [];
  List<BookModel> favorites = [];
  bool isLoading = false;
  int offset = 0;

  Future<void> fetchBooks() async {
    if (isLoading) return;
    isLoading = true;
    notifyListeners();

    final newBooks = await _service.fetchBooks(offset);
    books.addAll(newBooks);
    offset += 10;

    isLoading = false;
    notifyListeners();
  }

  void toggleFavorite(BookModel book) {
    if (favorites.contains(book)) {
      favorites.remove(book);
    } else {
      favorites.add(book);
    }
    notifyListeners();
  }

  bool isFavorite(BookModel book) {
    return favorites.contains(book);
  }
}
