
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/details_page.dart';
import 'presentation/pages/favorites_page.dart';
import 'presentation/viewmodels/book_view_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => BookViewModel()..fetchBooks(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyBooks',
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        '/details': (_) => DetailsPage(),
        '/favorites': (_) => FavoritesPage(),
      },
    );
  }
}
