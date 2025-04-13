
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/models/book_model.dart';
import '../viewmodels/book_view_model.dart';

class BookTile extends StatelessWidget {
  final BookModel book;

  const BookTile({required this.book});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<BookViewModel>(context);
    final isFav = vm.isFavorite(book);

    return ListTile(
      title: Text(book.title),
      subtitle: Text(book.authors?.join(', ') ?? 'Unknown'),
      trailing: IconButton(
        icon: Icon(isFav ? Icons.favorite : Icons.favorite_border),
        onPressed: () => vm.toggleFavorite(book),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/details', arguments: book);
      },
    );
  }
}
