
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/book_view_model.dart';
import '../widgets/book_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<BookViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("MyBooks"),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () => Navigator.pushNamed(context, '/favorites'),
          ),
        ],
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          if (!vm.isLoading && scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
            vm.fetchBooks();
          }
          return true;
        },
        child: ListView.builder(
          itemCount: vm.books.length,
          itemBuilder: (context, index) {
            final book = vm.books[index];
            return BookTile(book: book);
          },
        ),
      ),
    );
  }
}
