
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/book_view_model.dart';
import '../widgets/book_tile.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<BookViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Favorites")),
      body: ListView.builder(
        itemCount: vm.favorites.length,
        itemBuilder: (context, index) {
          final book = vm.favorites[index];
          return BookTile(book: book);
        },
      ),
    );
  }
}
