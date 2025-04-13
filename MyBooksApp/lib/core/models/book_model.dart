
class BookModel {
  final String title;
  final String key;
  final List<String>? authors;

  BookModel({required this.title, required this.key, this.authors});

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      title: json['title'] ?? '',
      key: json['key'] ?? '',
      authors: List<String>.from(
        (json['authors'] as List?)?.map((a) => a['name']) ?? [],
      ),
    );
  }
}
