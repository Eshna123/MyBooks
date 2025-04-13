
import 'package:flutter/material.dart';
import '../../core/models/book_model.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BookModel book = ModalRoute.of(context)!.settings.arguments as BookModel;

    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title: \${book.title}", style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            Text("Authors: \${book.authors?.join(', ') ?? 'Unknown'}"),
            SizedBox(height: 8),
            Text("Key: \${book.key}"),
          ],
        ),
      ),
    );
  }
}
