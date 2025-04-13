# 📚 MyBooks - Flutter App

**MyBooks** is a Flutter app that displays a list of novels using the [Open Library API](https://openlibrary.org/subjects/novel.json). Users can browse books, view details, mark them as favorites, and view a list of their favorite books. The app also supports pagination.

---

## 🚀 Features

- ✅ View a list of novels fetched from the Open Library API
- ✅ View detailed information about each book
- ✅ Mark/unmark a book as favorite
- ✅ Paginated book list (loads 10 books at a time)
- ✅ Favorites page to view and remove favorite books

---

## 🛠️ Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/MyBooks.git
   cd MyBooks
   
2.** Install Dependencies**
     flutter pub get

3.**Run the App**
    flutter run



**Architecture Overview**
The app is built using a simplified Clean Architecture + MVVM (Model-View-ViewModel) approach.

Layers:
Model (BookModel): Represents the data structure of a book.
Service (BookService): Handles API communication and fetches the book data from Open Library.
ViewModel (BookViewModel): Manages app state, logic for fetching books, pagination, and favorites.
View (UI): Displays data to the user, allowing interaction (HomePage, DetailsPage, FavoritesPage).

** Key Decisions**
State Management: Provider was chosen for simplicity and because it integrates well with Flutter’s reactive nature.

Pagination: The app uses an offset-based pagination approach (?limit=10&offset=n) to load books in chunks.

Favorites: Users can mark/unmark books as favorites. This is managed in memory using a list (favorites) in the BookViewModel.

Later improvements could include saving favorites persistently using libraries like Hive or SharedPreferences.

Navigation: We use named routes (/, /details, /favorites) for clean navigation management.


