# Books_app_practice

A practice SwiftUI app for managing books: a list, favorites, adding a book, and a detail screen.

## What I learned

- **@State**: local view state (form fields in `AddBookView`, the sheet presentation flag).
- **@Binding**: two-way value passing to child views (`Book` in `BookRowView` and `BookDetailView`).
- **ObservableObject / @ObservedObject / @StateObject**: logic lives in `BooksViewModel`; `MainTabView` owns it via `@StateObject`, and child screens receive it via `@ObservedObject`.
- **@Environment**: system environment values, such as `dismiss` for closing a screen.
- **NavigationStack / NavigationLink**: navigation between the book list and the detail screen.
- **TabView (tab bar)**: bottom tab bar with "Books" and "Favorites" tabs (`MainTabView`).
- **swipeActions**: swipe on a list row to delete a book.

## Structure

| File | Purpose |
|------|---------|
| `Book.swift` | Book model |
| `BooksViewModel.swift` | Data and logic |
| `BooksView.swift` | Book list |
| `BookRowView.swift` | List row |
| `BookDetailView.swift` | Book details |
| `AddBookView.swift` | Add a book |
| `FavoritesView.swift` | Favorites |
| `MainTabView.swift` | Tab bar |

## Running

Open `books_practice_.xcodeproj` in Xcode and run it on an iOS simulator.
