import SwiftUI

struct Book: Identifiable {
    let id: UUID
    let title: String
    let author: String
    let coverName: String
    var isFavorite: Bool
}

extension Book {

    static let data: [Book] = [
        Book(
            id: UUID(),
            title: "Atomic Habits",
            author: "James Clear",
            coverName: "atomicHabits",
            isFavorite: true
        ),

        Book(
            id: UUID(),
            title: "The Alchemist",
            author: "Paulo Coelho",
            coverName: "theAlchemist",
            isFavorite: false
        ),

        Book(
            id: UUID(),
            title: "1984",
            author: "George Orwell",
            coverName: "nineteenEightyFour",
            isFavorite: true
        ),
    ]
}
