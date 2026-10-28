import SwiftUI

struct AddBookView: View {

    @State private var title: String = ""
    @State private var author: String = ""
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var viewModel: BooksViewModel

    var body: some View {
        Form {
            TextField("Book title", text: $title)
            TextField("Author", text: $author)
        }
        .navigationTitle("Add book View")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                }
            }

            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    viewModel.addBook(title: title, author: author)
                    dismiss()
                } label: {
                    Text("save")

                }

            }
        }
    }
}

#Preview {

    NavigationStack {
        AddBookView(viewModel: BooksViewModel())
    }
}
