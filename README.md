# Books_app_practice

Учебное SwiftUI-приложение для работы с книгами: список, избранное, добавление и детальный экран.

## Что освоено

- **@State** — локальное состояние view (поля формы в `AddBookView`, флаг показа sheet).
- **@Binding** — двусторонняя передача значения в дочерние view (`Book` в `BookRowView` и `BookDetailView`).
- **ObservableObject / @ObservedObject / @StateObject** — логика в `BooksViewModel`; `MainTabView` владеет ею через `@StateObject`, дочерние экраны получают её через `@ObservedObject`.
- **@Environment** — системные значения окружения, например `dismiss` для закрытия экрана.
- **NavigationStack / NavigationLink** — переходы между списком книг и экраном деталей.
- **TabView (TabBar)** — нижняя панель вкладок: «Книги» и «Избранное» (`MainTabView`).
- **swipeActions** — свайп по строке списка для удаления книги.

## Структура

| Файл | Назначение |
|------|-----------|
| `Book.swift` | Модель книги |
| `BooksViewModel.swift` | Данные и логика |
| `BooksView.swift` | Список книг |
| `BookRowView.swift` | Строка списка |
| `BookDetailView.swift` | Детали книги |
| `AddBookView.swift` | Добавление книги |
| `FavoritesView.swift` | Избранное |
| `MainTabView.swift` | Tab bar |

## Запуск

Откройте `books_practice_.xcodeproj` в Xcode и запустите на симуляторе iOS.
