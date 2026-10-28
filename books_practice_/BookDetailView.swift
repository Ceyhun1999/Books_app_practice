import SwiftUI

struct BookDetailView: View {
    @Binding var book: Book

    var body: some View {
        HStack(spacing: 20) {
            Image($book.wrappedValue.coverName)
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 140)

            VStack(alignment: .leading) {
                Text($book.wrappedValue.title)
                    .font(.title)
                    .fontWeight(.bold)

                Text($book.wrappedValue.author)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            Button {
                $book.isFavorite.wrappedValue.toggle()
            } label: {
                Image(systemName: $book.wrappedValue.isFavorite ? "heart.fill" : "heart")
                    .foregroundStyle(.red)
            }
            .buttonStyle(.plain)

        }
        .padding(8)
    }
}

#Preview {
    @Previewable @State var book = Book.data[0]
    BookRowView(book: $book)
}
