import Combine
import SwiftUI

final class BooksViewModel: ObservableObject {

    @Published var books: [Book] = Book.data

    func addBook(title: String, author: String) {
        let book = Book(
            id: UUID(),
            title: title,
            author: author,
            coverName: "atomicHabits",
            isFavorite: false
        )
        books.append(book)
    }

    func removeBook(book: Book) {
        books.removeAll { item in
            item.id == book.id
        }
    }

}
