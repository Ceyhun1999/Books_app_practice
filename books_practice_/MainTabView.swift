import SwiftUI

struct MainTabView: View {

    @StateObject private var viewModel = BooksViewModel()

    var body: some View {
        TabView {
            BooksView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "books.vertical")
                }

            FavoritesView(viewModel: viewModel)
                .tabItem {
                    Image(systemName: "heart")
                }
        }
    }
}

#Preview {
    MainTabView()
}
