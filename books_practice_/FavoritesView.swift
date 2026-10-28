import SwiftUI

struct FavoritesView: View {

    @StateObject var viewModel: BooksViewModel

    var body: some View {
        NavigationStack {
            List($viewModel.books.filter { $0.isFavorite.wrappedValue == true }) { book in
                BookRowView(book: book)
            }
            .navigationTitle("Favorites")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FavoritesView(viewModel: BooksViewModel())
}
