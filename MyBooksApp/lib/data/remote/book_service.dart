
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../core/models/book_model.dart';

class BookService {
  Future<List<BookModel>> fetchBooks(int offset) async {
    final url = 'https://openlibrary.org/subjects/novel.json?limit=10&offset=\$offset';
    final response = await http.get(Uri.parse(url));
    final data = jsonDecode(response.body);
    final works = data['works'] as List;

    return works.map((json) => BookModel.fromJson(json)).toList();
  }
}
