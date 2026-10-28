import SwiftUI

struct BooksView: View {

    @ObservedObject var viewModel: BooksViewModel

    @State private var showSheet: Bool = false

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach($viewModel.books) { book in
                        NavigationLink {
                            BookDetailView(book: book)
                        } label: {
                            BookRowView(book: book)
                        }
                        .swipeActions {
                            Button(role: .destructive) {
                                viewModel.removeBook(book: book.wrappedValue)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                    }
                }
            }
            .navigationTitle("Books")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showSheet = true
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
            .sheet(isPresented: $showSheet) {
                NavigationStack {
                    AddBookView(viewModel: viewModel)
                }
            }
        }
    }
}

#Preview {
    BooksView(viewModel: BooksViewModel())
}
